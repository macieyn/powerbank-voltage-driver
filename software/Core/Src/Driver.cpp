/*
 * Driver.cpp
 *
 *  Created on: 28 sie 2020
 *      Author: maciej.n
 */

#include "Driver.h"


/*
 * Driver class constructor
 */
Driver::Driver(QC3Controller* qc, Button* btn, Led* led) {
	// TODO Auto-generated constructor stub
	_qc = qc;
	_btn = btn;
	_led = led;
	_mode = out5V;
}


/*
 * Method with driver main program.
 * This method should be called in while loop inside main function.
 */
void Driver::program() {

	_led->on();

	_qc->begin();
	_qc->out5V();
	HAL_Delay(1000);
	_led->off();
	_qc->out9V();

	while(1) {

	}
}


/*
 * Method that changes output voltage based on Drivers variable "_mode"
 * To actually change mode, change "_mode" value first, then call this method.
 */
void Driver::changeMode() {
	switch(_mode) {
	case out5V:
		_qc->out5V();
		_led->blink(1, 250);
		break;
	case out9V:
		_qc->out9V();
		_led->blink(2, 250);
	case out12V:
		_qc->out12V();
		_led->blink(3, 250);
	default:
		_qc->out5V();
		_led->blink(10, 100, 100);
	}
}

