/*
 * DataPin.h
 *
 *  Created on: 28 sie 2020
 *      Author: maciej.n
 */

#ifndef SRC_DATASIGNAL_H_
#define SRC_DATASIGNAL_H_

#include "stm32g0xx_hal.h"

class DataSignal {
public:
	uint16_t _GPIO_PIN_1;
	GPIO_TypeDef *_GPIO_PORT_1;
	uint16_t _GPIO_PIN_2;
	GPIO_TypeDef *_GPIO_PORT_2;

	DataSignal(GPIO_TypeDef *port1, uint16_t pin1, GPIO_TypeDef *port2, uint16_t pin2);
	void out3300mV();
	void out600mV();
	void out0mV();
};

#endif /* SRC_DATASIGNAL_H_ */
