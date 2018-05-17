///////////////////////////////////////////////////////////
//  Process.cpp
//  Implementation of Process
//  Created on:      06-aug-2014 09:30:58
//  Original author: kbe
///////////////////////////////////////////////////////////
#include "FilterAlgo.h"
#include "HAL.h"

FilterAlgo *pAlgo = 0;

void InitProcess(FilterAlgo *algo)
{
	pAlgo = algo;
}

extern "C" {

	// Interface to SPORT interrupt
	void Process(void)
	{
		/* Not used - extra channel Ch1 left/right
		int i;
		for (i=0; i<INPUT_SIZE; i++)
		{
			sCh1LeftOut[i] = sCh1LeftIn[i];
			sCh1RightOut[i] = sCh1RightIn[i];
		}
		*/

		if (pAlgo) pAlgo->process(sCh0LeftIn, sCh0RightIn, sCh0LeftOut, INPUT_SIZE);
		//if (pAlgoRight) pAlgoRight->process(sCh0RightIn, sCh0RightOut, INPUT_SIZE);
	
	}

}
