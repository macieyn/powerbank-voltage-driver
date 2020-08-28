/*
 * Driver.cpp
 *
 *  Created on: 28 sie 2020
 *      Author: maciej.n
 */

#include "Driver.h"

Driver::Driver(QC3Controller* qc, Button* btn, Led* led) {
	// TODO Auto-generated constructor stub
	_qc = qc;
	_btn = btn;
	_led = led;
	_mode = out5V;
}

void Driver::program() {

	_led->on();

	_qc->begin();
	_qc->out5V();

	_led->off();

	while(1) {
		if (_btn->is_pressed()) {
			while(_btn->is_pressed()) {};
			_mode = static_cast<Mode>((_mode + 1) % count);
			changeMode();
		};
	}
}

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

