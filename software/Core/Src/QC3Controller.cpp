/*
 * QCDriver.cpp
 *
 *  Created on: 28 sie 2020
 *      Author: maciej.n
 */

#include <QC3Controller.h>


/*
 * QC3Controller class constructor
 *
 * Read more here:
 * http://blog.deconinck.info/post/2017/08/09/Turning-a-Quick-Charge-3.0-charger-into-a-variable-voltage-power-supply
 * https://www.onsemi.com/pub/Collateral/NCP4371-D.PDF
 */
QC3Controller::QC3Controller(DataSignal* dp, DataSignal* dm) {
	// TODO Auto-generated constructor stub
	_dp = dp;
	_dm = dm;
	_voltage = 0;
	_mode = normal;
	_handshakeDone = false;
}


/*
 * Method to make a handshake.
 * This method is not aware if handshake is done, method assumes it's done.
 */
void QC3Controller::begin(){
	_dp->out600mV();
	_dm->out600mV();
	HAL_Delay(QC_T_GLITCH_BC_DONE_MS);
	_dm->out0mV();
	HAL_Delay(500);
	_handshakeDone = true;
}


/*
 * Method to set voltage at 5V
 */
void QC3Controller::out5V() {
	if (!_handshakeDone) begin();
	_dp->out600mV();
	_dm->out0mV();
	HAL_Delay(QC_T_GLICH_V_CHANGE_MS);
	_voltage = 5000;
}


/*
 * Method to set voltage at 9V
 */
void QC3Controller::out9V() {
	if (!_handshakeDone) begin();
	if(_mode != continous) out5V();
	_dp->out3300mV();
	_dm->out600mV();
	HAL_Delay(QC_T_GLICH_V_CHANGE_MS);
	_voltage = 9000;
}


/*
 * Method to set voltage at 12V
 */
void QC3Controller::out12V() {
	if (!_handshakeDone) begin();
	if(_mode != continous) out5V();
	_dp->out600mV();
	_dm->out600mV();
	HAL_Delay(QC_T_GLICH_V_CHANGE_MS);
	_voltage = 12000;
}


/*
 * Method toget current volatage.
 */
uint16_t QC3Controller::getVoltage() {
	return _voltage;
}


/*
 * Method to set voltage when in continous mode.
 * Steps are +-200mV
 */
void QC3Controller::setVoltage(uint16_t targetVoltage) {
	if(!_handshakeDone) begin();

	if (targetVoltage <= QC3_MIN_VOLTAGE_MV) {
	// below lower boundary: limit
		targetVoltage = QC3_MIN_VOLTAGE_MV;
	}
	else if (targetVoltage >= QC3_CLASS_A_MAX_VOLTAGE_MV) {
	// above upper boundary: limit
		targetVoltage = QC3_CLASS_A_MAX_VOLTAGE_MV;
	}
	else {
	// within boundaries: round
		targetVoltage = getClosestVoltage(targetVoltage); // useful if an invalid value was passed
	}

	if(targetVoltage == _voltage) return;

	if (targetVoltage > _voltage)
		while (targetVoltage > _voltage)
			incrementVoltage();
	else
		while (targetVoltage < _voltage)
			decrementVoltage();
}


/*
 * Method to switch to continous mode.
 */
void QC3Controller::continousMode() {
	_dp->out600mV();
	_dm->out3300mV();

	HAL_Delay(QC_T_GLICH_V_CHANGE_MS);

	_mode = continous;
}


/*
 * Method to increment voltage 200mV
 */
void QC3Controller::incrementVoltage() {
	if(!_handshakeDone) begin();
	if (_voltage < QC3_CLASS_A_MAX_VOLTAGE_MV) {
		if(_mode != continous) continousMode();
			// From http://www.onsemi.com/pub/Collateral/NCP4371-D.PDF :
			// "For the single request, an HVDCP recognizes a rising edge on D+ for an increment ..."
		_dp->out3300mV();
		HAL_Delay(QC_T_ACTIVE_MS);
		_dp->out600mV();
		HAL_Delay(QC_T_INACTIVE_MS);
		_voltage += 200;
	}


}


/*
 * Method to decrement voltage 200mV
 */
void QC3Controller::decrementVoltage() {
	if(!_handshakeDone) begin();
	if (_voltage < QC3_CLASS_A_MAX_VOLTAGE_MV) {
		if(_mode != continous) continousMode();
			// From http://www.onsemi.com/pub/Collateral/NCP4371-D.PDF :
			// "For the single request, an HVDCP recognizes a rising edge on D+ for an increment ..."
		_dm->out600mV();
		HAL_Delay(QC_T_ACTIVE_MS);
		_dm->out3300mV();
		HAL_Delay(QC_T_INACTIVE_MS);
		_voltage -= 200;
	}
}


/*
 * Method to find closest posible voltage.
 */
uint16_t QC3Controller::getClosestVoltage(uint16_t targetVoltage){
	return 200 * ((targetVoltage + 99) / 200);
}



