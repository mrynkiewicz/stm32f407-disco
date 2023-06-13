/*
 * led.c
 *
 *  Created on: 3 cze 2023
 *      Author: DELL
 */

#include "stm32f4xx.h"
#include "led.h"

#define GPIODEN					(1U<<3)
#define GREEN_LED_PIN			(1U<<12)
#define ORANGE_LED_PIN			(1U<<13)
#define RED_LED_PIN				(1U<<14)
#define BLUE_LED_PIN			(1U<<15)

void Init_LEDs()
{
	RCC->AHB1ENR  |= GPIODEN;

	// pd12
	GPIOD->MODER |=(1U<<24);
	GPIOD->MODER &= ~(1U<<25);

	// pd13
	GPIOD->MODER |=(1U<<26);
	GPIOD->MODER &= ~(1U<<27);

	// pd14
	GPIOD->MODER |=(1U<<28);
	GPIOD->MODER &= ~(1U<<29);

	// pd15
	GPIOD->MODER |=(1U<<30);
	GPIOD->MODER &= ~(1U<<31);
}

void GreenLED_On()
{
	GPIOD->ODR |= GREEN_LED_PIN;
}

void GreenLED_Off()
{
	GPIOD->ODR &= ~(GREEN_LED_PIN);
}


void OrangeLED_On()
{
	GPIOD->ODR |= ORANGE_LED_PIN;
}

void OrangeLED_Off()
{
	GPIOD->ODR &= ~(ORANGE_LED_PIN);
}

void RedLED_On()
{
	GPIOD->ODR |= RED_LED_PIN;
}

void RedLED_Off()
{
	GPIOD->ODR &= ~(RED_LED_PIN);
}

void BlueLED_On()
{
	GPIOD->ODR |= BLUE_LED_PIN;
}

void BlueLED_Off()
{
	GPIOD->ODR &= ~(BLUE_LED_PIN);
}
