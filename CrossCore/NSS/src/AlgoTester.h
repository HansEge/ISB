/*
 * AlgoTester.h
 *
 *  Created on: 28. feb. 2018
 *      Author: Kim Bjerge
 */

#ifndef ALGOTESTER_H_
#define ALGOTESTER_H_
#include "Algorithm.h"

class AlgoTester {
public:
	AlgoTester(Algorithm *pAlgo);
	//short runTestDyn(char *inFileName, char *outFileName, char *fftFileName);
	short runTest(char *noiseName, char *desiredName, char *outFileName);

private:
	short readSignal(short buffer[], short desiredSignal[], char *noise, char *desired);
	short writeSignal(short buffer[], char *name);
	short runTest(char *inFileName, char *outFileName);

	Algorithm *m_pAlgo;
};

#endif /* ALGOTESTER_H_ */

