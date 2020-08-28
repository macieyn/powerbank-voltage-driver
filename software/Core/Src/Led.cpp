/*
 * Led.cpp
 *
 *  Created on: 28 sie 2020
 *      Author: maciej.n
 */

#include "Led.h"

Led::Led(GPIO_TypeDef* port, uint16_t pin) {
	// TODO Auto-generated constructor stub
	_port = port;
	_pin = pin;

}

void Led::on() {
	HAL_GPIO_WritePin(_port, _pin, GPIO_PIN_SET);
}

void Led::off() {
	HAL_GPIO_WritePin(_port, _pin, GPIO_PIN_RESET);
}

void Led::toggle() {
	HAL_GPIO_TogglePin(_port, _pin);
}

void Led::blink(uint16_t count, uint16_t time) {
	for (uint32_t i=0; i<count*2; i++) {
		toggle();
		HAL_Delay(time);
	}
}

void Led::blink(uint16_t count, uint16_t time_on, uint16_t time_off) {
	for (uint32_t i=0; i<count*2; i++) {
		on();
		HAL_Delay(time_on);
		off();
		HAL_Delay(time_off);
	}
}


