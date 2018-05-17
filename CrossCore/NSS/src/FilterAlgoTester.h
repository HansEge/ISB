/*
 * AlgoTester.h
 *
 *  Created on: 28. feb. 2018
 *      Author: Kim Bjerge
 */

#ifndef FILTERALGOTESTER_H_
#define FILTERALGOTESTER_H_
#include <math.h>
#include "FilterAlgo.h"

class FilterAlgoTester {
public:
	FilterAlgoTester(FilterAlgo *pAlgo);
	//short runTestDyn(char *inFileName, char *outFileName, char *fftFileName);
	short runTest(char *noiseName, char *desiredName, char *outError, char *outYError);

private:
	short readSignal(short noiseBuffer[], short desiredSignalBuffer[], char *noiseName, char *desiredName);
	short writeSignal(short filteredOutputBuffer[], char *FilteredOutput);

	FilterAlgo *m_pAlgo;
};

#endif /* FILTERALGOTESTER_H_ */

