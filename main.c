#include "atmel.h"

#define PIN 7

void main(void) {
	
	AT91C_BASE_PMC -> PMC_PCER |= (1 << AT91C_ID_PIOA);

	AT91C_BASE_PIOA -> PIO_OWDR &= ~(1 << PIN);
	
	AT91C_BASE_PIOA -> PIO_OWER |= (1 << PIN);
	
	AT91C_BASE_PIOA -> PIO_ODSR &= ~(1 << PIN);
	
}