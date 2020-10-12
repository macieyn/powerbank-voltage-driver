/*
 * QCDriver.h
 *
 *  Created on: 28 sie 2020
 *      Author: maciej.n
 */

#ifndef SRC_QCDRIVER_H_
#define SRC_QCDRIVER_H_

#include "DataSignal.h"
#include "stm32g0xx_hal.h"

#define QC3_MIN_VOLTAGE_MV              3600
#define QC3_CLASS_A_MAX_VOLTAGE_MV      12000
#define QC3_CLASS_B_MAX_VOLTAGE_MV      20000

// timing values for Portable Device are not available, indicative values for a HVDCP charger were taken from the uP7104 datasheet https://www.upi-semi.com/files/1889/1b8dae21-e91a-11e6-97d5-f1910565ec6d

#define QC_T_GLITCH_BC_DONE_MS          2000
#define QC_T_GLICH_V_CHANGE_MS          60
#define QC_T_ACTIVE_MS                  1
#define QC_T_INACTIVE_MS                1

class QC3Controller {
public:
	QC3Controller(DataSignal* dp, DataSignal* dm);
	void begin();
	void out5V();
	void out9V();
	void out12V();
	uint16_t getVoltage();
	void setVoltage(uint16_t targetVoltage);
	void continousMode();
private:
	 DataSignal* _dp;
	 DataSignal* _dm;
	 uint16_t _voltage;
	 enum Mode {
		 normal,
		 continous
	 };
	 Mode _mode;
	 bool _handshakeDone;
	 void incrementVoltage();
	 void decrementVoltage();
	 uint16_t getClosestVoltage(uint16_t targetVoltage);

};

#endif /* SRC_QCDRIVER_H_ */
