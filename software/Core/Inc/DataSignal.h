/*
 * DataPin.h
 *
 *  Created on: 28 sie 2020
 *      Author: maciej.n
 */

#ifndef SRC_DATASIGNAL_H_
#define SRC_DATASIGNAL_H_

#include "stm32g0xx_hal.h"

#define INPUT 0
#define OUTPUT 1

class DataSignal {
public:
	uint16_t _GPIO_PIN_3V;
	GPIO_TypeDef *_GPIO_PORT_3V;
	uint16_t _GPIO_PIN_600mV;
	GPIO_TypeDef *_GPIO_PORT_600mV;

	DataSignal(GPIO_TypeDef *port1, uint16_t pin1, GPIO_TypeDef *port2, uint16_t pin2);
	void out3300mV();
	void out600mV();
	void out0mV();
};

#endif /* SRC_DATASIGNAL_H_ */
