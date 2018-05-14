/*
<<<<<<< HEAD
b * AlgoTester.cpp
=======
 * AlgoTester.cpp
>>>>>>> 6fa30427fae59f1a367d7ab5f935000e6fcce47e
 *
 *  Created on: 28. feb. 2018
 *      Author: Kim Bjerge
 */

#include <stdio.h>
#include "AlgoTester.h"
<<<<<<< HEAD
#include "LMSFilter.h"

// Fixed signal size must be manually changed
#define 	N 	1024  // Test signal length

// Test signal used for testing made as global variables for plotting
section("L1_data_a") short NoiseSignal[N];	// Test noise signal loaded from .txt file
section("L1_data_a") short DesiredSignal[N];// Test desired signal loaded from .txt file
section("L1_data_a") short OutputSignal[N]; // Result after processing test signal with m_pAlgo
=======

// Fixed signal size must be manually changed
#define 	N 	2400  // Test signal length

// Test signal used for testing made as global variables for plotting
short TestSignal[N]; // Test signal loaded from test input file
short OutputSignal[N]; // Result after processing test signal with m_pAlgo
>>>>>>> 6fa30427fae59f1a367d7ab5f935000e6fcce47e

AlgoTester::AlgoTester(Algorithm *pAlgo)
{
	m_pAlgo = pAlgo;
}

<<<<<<< HEAD
short AlgoTester::readSignal(short noiseBuffer[], short desiredSignalBuffer[], char *noiseName, char *desiredName)
=======
short AlgoTester::readSignal(short bufferNoise[], short bufferDesired[], char *name)
>>>>>>> 6fa30427fae59f1a367d7ab5f935000e6fcce47e
{
	short error = -1;
	FILE *fp;
	short tmp;

<<<<<<< HEAD
	fp=fopen(noiseName , "r");
=======
	fp=fopen(name , "r");
>>>>>>> 6fa30427fae59f1a367d7ab5f935000e6fcce47e
	if (fp)
	{
		for(short n=0; n < N; n++) {
			fscanf(fp, "%hd,\n", &tmp);
<<<<<<< HEAD
			noiseBuffer[n] = tmp;
=======
			bufferNoise[n] = tmp;
>>>>>>> 6fa30427fae59f1a367d7ab5f935000e6fcce47e
		}
		fclose(fp);
		error = 0;
	}
<<<<<<< HEAD

	fp = NULL;
	tmp = 0;

	fp=fopen(desiredName , "r");
	if (fp)
	{
		for(short n=0; n < N; n++) {
			fscanf(fp, "%hd,\n", &tmp);
			desiredSignalBuffer[n] = tmp;
		}
		fclose(fp);
		error = 0;
	}



=======
>>>>>>> 6fa30427fae59f1a367d7ab5f935000e6fcce47e
	return error;
}

short AlgoTester::writeSignal(short buffer[], char *name)
{
	short error = -1;
	FILE *fp;

	fp=fopen(name, "w");
	if (fp)
	{
		for(short n=0; n < N; n++)
			fprintf(fp, "%hd,\n", buffer[n]);
		fclose(fp);
		error = 0;
	}
	return error;
}

<<<<<<< HEAD
short AlgoTester::runTest(char *noiseName, char *desiredName, char *outFileName)
{
	// Reading test signal in inFileName
	short error = readSignal(NoiseSignal, DesiredSignal, noiseName, desiredName);
	if (error == 0)
	{
		// Test file loaded into TestSignal
		printf("Testing algorithm - input file %s and %s with signal of %d samples\n", noiseName, desiredName, N);

		// Processing algorithm on TestSignal
		m_pAlgo->process(NoiseSignal, DesiredSignal, OutputSignal, N);

		// Writing result from OutputSignal to outFileName
		error = writeSignal(OutputSignal, outFileName);

		if (error == 0)
			printf("Result signal of %d samples saved in %s \n", N, outFileName);
		else
			printf("Error writing result to file %s \n", outFileName);
	}
	else
		printf("Error reading file %s and %s with input test signal\n", noiseName, desiredName);

	return error;
}

/*
short AlgoTester::runTestDyn(char *inFileName, char *outFileName, char *fftFileName)
{
	short error;
	short *pMagnitudes;
	DynamicFilter *pDynFilter;

	// Reading test signal in inFileName
	error = readSignal(TestSignal, inFileName);
=======
short AlgoTester::runTest(char *inFileName, char *outFileName)
{
	// Reading test signal in inFileName
	short error = readSignal(TestSignal, inFileName);
>>>>>>> 6fa30427fae59f1a367d7ab5f935000e6fcce47e
	if (error == 0)
	{
		// Test file loaded into TestSignal
		printf("Testing algorithm - input file %s with signal of %d samples\n", inFileName, N);

		// Processing algorithm on TestSignal
		m_pAlgo->process(TestSignal, OutputSignal, N);

		// Writing result from OutputSignal to outFileName
		error = writeSignal(OutputSignal, outFileName);
<<<<<<< HEAD
=======

>>>>>>> 6fa30427fae59f1a367d7ab5f935000e6fcce47e
		if (error == 0)
			printf("Result signal of %d samples saved in %s \n", N, outFileName);
		else
			printf("Error writing result to file %s \n", outFileName);
<<<<<<< HEAD

		// Read FFT magnitude response
		pDynFilter = (DynamicFilter*)m_pAlgo;
		pMagnitudes = (short*)pDynFilter->getMagnitudeResponse();

		// Writing result from pMagnitude to outFileName
		error = writeSignal(pMagnitudes, fftFileName);
		if (error == 0)
			printf("FFT magnitude of %d samples saved in %s \n", N, fftFileName);
		else
			printf("Error writing result to file %s \n", fftFileName);
=======
>>>>>>> 6fa30427fae59f1a367d7ab5f935000e6fcce47e
	}
	else
		printf("Error reading file %s with input test signal\n", inFileName);

	return error;
}
<<<<<<< HEAD
*/
=======
>>>>>>> 6fa30427fae59f1a367d7ab5f935000e6fcce47e
