/*
 * Button.h
 *
 *  Created on: 28 sie 2020
 *      Author: maciej.n
 */

#ifndef SRC_BUTTON_H_
#define SRC_BUTTON_H_

#include "stm32g0xx_hal.h"

class Button {
private:
	GPIO_TypeDef* _port;
	uint16_t _pin;
public:
	Button(GPIO_TypeDef* port, uint16_t pin);
	bool is_pressed();
};

#endif /* SRC_BUTTON_H_ */
