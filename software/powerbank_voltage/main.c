/*
 * powerbank_voltage.c
 *
 * Created: 21.08.2020 11:06:48
 * Author : maciej.n
 */ 

#define F_CPU 1200000UL

#include <avr/io.h>
#include <util/delay.h>

#define MODE_COUNT 3

#define BTN (1<<PB2)
#define BTN_PUSHED (!(PINB & BTN))
#define LED (1<<PB3)
#define LED_ON (PORTB |= LED)
#define LED_OFF (PORTB &= ~LED)
	
#define DP (1<<PB4)
#define DM_3V (1<<PB0)
#define DM_GND (1<<PB1)

void begin();
void dp600mV();
void dp3300mV();
void dm600mV();
void dm3300mV();
void dm0mV();
void set12V();
void set9V();
void set5V();
void blink(uint8_t amount);

uint8_t mode = 0;


int main(void)
{
	PORTB = BTN;
	DDRB = BTN | LED | DP | DM_3V | DM_GND;
	
	begin();
	set5V();
	
	while(1) {
		if (BTN_PUSHED) {
			while (BTN_PUSHED);
			mode = (mode + 1) % MODE_COUNT;
			switch (mode) {
				case 0:
				set5V();
				break;
				case 1:
				set9V();
				break;
				case 2:
				set12V();
				break;
				default:
				set5V();
				break;
			};
		};
	}
}

void dp600mV() {
	PORTB |= DP;
}

void dp3300mV() {
	PORTB &= ~DP;
}

void dm600mV() {
	PORTB |= DM_3V | DM_GND;
}

void dm3300mV() {
	PORTB &= ~DM_GND;
	PORTB |= DM_3V;
}

void dm0mV() {
	PORTB &= ~DM_3V;
	PORTB |= DM_GND;
}

void begin() {
	LED_ON;
	dp600mV();
	dm600mV();
	_delay_ms(1500);
	dm0mV();
	_delay_ms(1500);
	LED_OFF;
}

void set12V() {
	dp600mV();
	dm600mV();
	blink(3);
	LED_ON;
	_delay_ms(500);
	LED_OFF;
}

void set9V() {
	dp3300mV();
	dm600mV();
	blink(2);
	LED_ON;
	_delay_ms(500);
	LED_OFF;
}

void set5V() {
	dp600mV();
	dm0mV();
	blink(1);
	LED_ON;
	_delay_ms(500);
	LED_OFF;
}

void blink(uint8_t amount) {
	for (uint8_t i=0; i< amount; i++) {
		LED_ON;
		_delay_ms(100);
		LED_OFF;
		_delay_ms(100);
	}
	_delay_ms(500);
}