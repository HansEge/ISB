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
<<<<<<< HEAD
	//short runTestDyn(char *inFileName, char *outFileName, char *fftFileName);
	short runTest(char *noiseName, char *desiredName, char *outFileName);

private:
	short readSignal(short buffer[], short desiredSignal[], char *noise, char *desired);
	short writeSignal(short buffer[], char *name);
=======
	short runTest(char *inFileName, char *outFileName);

private:
	short readSignal(short bufferNoise[], short bufferDesired[], char *name);
	short writeSignal(short bufferNoise[], short bufferDesired[], char *name);
>>>>>>> 6fa30427fae59f1a367d7ab5f935000e6fcce47e
	Algorithm *m_pAlgo;
};

#endif /* ALGOTESTER_H_ */

