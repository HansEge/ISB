/*
 * LMSFilter.h
 *
 *  Created on: 30. apr. 2018
 *      Author: stinu
 */

#ifndef LMSFILTER_H_
#define LMSFILTER_H_

#include <stdfix.h>
#include "Algorithm.h"

#define NUM_WEIGTHS 32


typedef struct
{
	fract W[NUM_WEIGTHS];
	/*
	fract x[NUM_WEIGTHS-1]; 		// x delay line x(n-1), x(n-2)
	long fract y[NUM_WEIGTHS-1]; // y delay line y(n-1), y(n-2), store y in format 1.31 to minimize product quantization
	*/
} LMS_COEFS;


class LMSFilter : public Algorithm
{
	public:
		LMSFilter();
		virtual void process(short* noise, short* desiredSignal, short* output, short len);
		virtual void create(void);
		/*
		void processNoise(short input, short output_noise, short length);
		void updateWeights(short noise, short output);
		void addSignals(short noise, short desiredSignal);
		*/


	private:
		LMS_COEFS Filter;

};

#endif /* LMSFILTER_H_ */
