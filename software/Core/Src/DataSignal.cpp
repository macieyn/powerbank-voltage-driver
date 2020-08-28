/*
 * DataPin.cpp
 *
 *  Created on: 28 sie 2020
 *      Author: maciej.n
 */

#include "DataSignal.h"

DataSignal::DataSignal(GPIO_TypeDef *port1, uint16_t pin1, GPIO_TypeDef *port2, uint16_t pin2){
	// TODO Auto-generated constructor stub
	_GPIO_PIN_1 = pin1;
	_GPIO_PORT_1 = port1;
	_GPIO_PIN_2 = pin2;
	_GPIO_PORT_2 = port2;
}

void DataSignal::out3300mV() {
	HAL_GPIO_WritePin(_GPIO_PORT_1, _GPIO_PIN_1, GPIO_PIN_SET);
	HAL_GPIO_WritePin(_GPIO_PORT_2, _GPIO_PIN_2, GPIO_PIN_RESET);
}

void DataSignal::out600mV() {
	HAL_GPIO_WritePin(_GPIO_PORT_2, _GPIO_PIN_2, GPIO_PIN_SET);
	HAL_GPIO_WritePin(_GPIO_PORT_1, _GPIO_PIN_1, GPIO_PIN_RESET);
}

void DataSignal::out0mV() {
	HAL_GPIO_WritePin(_GPIO_PORT_1, _GPIO_PIN_1, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(_GPIO_PORT_2, _GPIO_PIN_2, GPIO_PIN_RESET);
}
