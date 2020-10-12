/*
 * DataPin.cpp
 *
 *  Created on: 28 sie 2020
 *      Author: maciej.n
 */

#include "DataSignal.h"

/*
 * WARNING: This class methods only make sense if the application is made as intended.
 *
 *
 */

/*
 * DataSignal class constructor
 */
DataSignal::DataSignal(GPIO_TypeDef *port3V, uint16_t pin3V, GPIO_TypeDef *port600mV, uint16_t pin600mV){
	_GPIO_PIN_3V = pin3V;
	_GPIO_PORT_3V = port3V;
	_GPIO_PIN_600mV = pin600mV;
	_GPIO_PORT_600mV = port600mV;
}

/*
 * Method that sets output voltage at 3.3V
 */
void DataSignal::out3300mV() {
	HAL_GPIO_WritePin(_GPIO_PORT_3V, _GPIO_PIN_3V, GPIO_PIN_SET);
	HAL_GPIO_WritePin(_GPIO_PORT_600mV, _GPIO_PIN_600mV, GPIO_PIN_SET);
}

/*
 * Method that sets output voltage at 600mV
 */
void DataSignal::out600mV() {
	HAL_GPIO_WritePin(_GPIO_PORT_600mV, _GPIO_PIN_600mV, GPIO_PIN_SET);
	HAL_GPIO_WritePin(_GPIO_PORT_3V, _GPIO_PIN_3V, GPIO_PIN_RESET);
}


/*
 * Method that sets output voltage at 0V
 */
void DataSignal::out0mV() {
	HAL_GPIO_WritePin(_GPIO_PORT_600mV, _GPIO_PIN_600mV, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(_GPIO_PORT_3V, _GPIO_PIN_3V, GPIO_PIN_RESET);
}
