/*
 q q * LMSFilter.cpp
 *
 *  Created on: 30. apr. 2018
 *      Author: stinu
 */

#include "LMSFilter.h"

extern short y_buffer[];

LMSFilter::LMSFilter()
{
		//Set everything to 0
	for (short i = 0; i < NUM_WEIGTHS; i++) {
		Filter.W[i] = 0;
		if (i < NUM_WEIGTHS-1) {
			/*
			Filter.x[i] = 0;
			Filter.y[i] = 0;
			*/
		}
	}
}

void LMSFilter::process(short* noise, short* desiredSignal, short* output, short len)
{
	fract *x = (fract *)noise;
	fract *e = (fract *)output;
	fract *d = (fract *)desiredSignal;
	fract *y = (fract *)y_buffer;

	long fract my = 0.004;

	for(short i = 0; i < len; i++)
	{
		long fract yn = 0;

		for(short j = 0; j < NUM_WEIGTHS; j++)
		{
			if(i > j)
			{
				yn = yn + Filter.W[j]*x[i-j];
			}
		}
		y[i] = (fract)yn;
		e[i] = d[i] - yn;

		long fract tmp_W = 0;

		for(short k = 0; k < NUM_WEIGTHS; k++)
		{
			if(i > k)
			{
				Filter.W[k] = Filter.W[k]  + my*x[i-k]*e[i];

			}
		}

	}
}

void LMSFilter::create()
{
	for (short i = 0; i < NUM_WEIGTHS; i++) {
			Filter.W[i] = 0;
		}
		//Filter.W[0] = FRACT_MAX;
}
