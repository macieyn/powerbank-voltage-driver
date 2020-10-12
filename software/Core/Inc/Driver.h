/*
 * Driver.h
 *
 *  Created on: 28 sie 2020
 *      Author: maciej.n
 */

#ifndef SRC_DRIVER_H_
#define SRC_DRIVER_H_

#include "stm32g0xx_hal.h"
#include <Button.h>
#include <Led.h>
#include <QC3Controller.h>

class Driver {
private:
	QC3Controller* _qc;
	Button* _btn;
	Led* _led;
	enum Mode {
		out5V,
		out9V,
		out12V,

		count
	};
	Mode _mode;
public:
	Driver(QC3Controller* qc, Button* btn, Led* led);
	void program();
	void changeMode();

};

#endif /* SRC_DRIVER_H_ */
