/*
 * Button.cpp
 *
 *  Created on: 28 sie 2020
 *      Author: maciej.n
 */

#include "Button.h"


/**
 * Button class constructor
 **/
Button::Button(GPIO_TypeDef* port, uint16_t pin) {
	// TODO Auto-generated constructor stub
	_port = port;
	_pin = pin;
}


/**
 * Return true (var > 0) or false (var = 0) if button is pressed.
 */
bool Button::is_pressed() {
	return HAL_GPIO_ReadPin(_port, _pin);
}
