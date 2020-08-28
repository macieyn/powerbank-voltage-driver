/*
 * Led.h
 *
 *  Created on: 28 sie 2020
 *      Author: maciej.n
 */

#ifndef SRC_LED_H_
#define SRC_LED_H_

#include "stm32g0xx_hal.h"

class Led {
private:
	GPIO_TypeDef* _port;
	uint16_t _pin;
public:
	Led(GPIO_TypeDef* _port, uint16_t _pin);
	void on();
	void off();
	void toggle();
	void blink(uint16_t count, uint16_t time);
	void blink(uint16_t count, uint16_t time_on, uint16_t time_off);
};

#endif /* SRC_LED_H_ */
