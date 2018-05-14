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
	short runTest(char *inFileName, char *outFileName);

private:
	short readSignal(short bufferNoise[], short bufferDesired[], char *name);
	short writeSignal(short bufferNoise[], short bufferDesired[], char *name);
	Algorithm *m_pAlgo;
};

#endif /* ALGOTESTER_H_ */

