/*
 * LMSFilter.cpp
 *
 *  Created on: 30. apr. 2018
 *      Author: stinu
 */

#include "LMSFilter.h"


int yn = 0;

short out;

LMSFilter::LMSFilter()
{
	for (short i = 0; i < NUM_WEIGTHS; i++) {

		Filter.W[i] = 0;
		if (i < NUM_WEIGTHS-1) {
			Filter.x[i] = 0;
			Filter.y[i] = 0;
		}
	}
}


LMSFilter::~LMSFilter() {
	// TODO Auto-generated destructor stub
}

