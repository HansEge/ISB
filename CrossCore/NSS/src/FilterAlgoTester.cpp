/*
b * AlgoTester.cpp
=======
 * AlgoTester.cpp
 *
 *  Created on: 28. feb. 2018
 *      Author: Kim Bjerge
 */

#include "FilterAlgoTester.h"

#include <stdio.h>
#include "LMSFilter.h"


// Fixed signal size must be manually changed
#define N 1024  // Test signal length

// Test signal used for testing made as global variables for plotting
//section("L1_data_a")
short NoiseSignal[N];	// Test noise signal loaded from .txt file
//section("L1_data_a")
short DesiredSignal[N];// Test desired signal loaded from .txt file
//section("L1_data_a")
short OutputSignal[N]; // Result after processing test signal with m_pAlgo

short y_buffer[N];

FilterAlgoTester::FilterAlgoTester(FilterAlgo *pAlgo)
{
	m_pAlgo = pAlgo;
}

short FilterAlgoTester::readSignal(short noiseBuffer[], short desiredSignalBuffer[], char *noiseName, char *desiredName)
{
	short error = -1;
	FILE *fp;
	short tmp;

	fp=fopen(noiseName , "r");
	if (fp)
	{
		for(short n=0; n < N; n++) {
			fscanf(fp, "%hd,\n", &tmp);
			noiseBuffer[n] = tmp;
		}
		fclose(fp);
		error = 0;
	}

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
	return error;
}

short FilterAlgoTester::writeSignal(short filteredOutputBuffer[], char *FilteredOutput)
{
	short error = -1;
	FILE *fp;

	fp=fopen(FilteredOutput, "w");
	if (fp)
	{
		for(short n=0; n < N; n++)
			fprintf(fp, "%hd,\n", filteredOutputBuffer[n]);
		fclose(fp);
		error = 0;
	}
	return error;
}

short FilterAlgoTester::runTest(char *noiseName, char *desiredName, char *outError, char *outYError)
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
		error = writeSignal(OutputSignal,outError);
		error = writeSignal(y_buffer, outYError);

		if (error == 0)
			printf("Result signal of %d samples saved in %s \n", N, outError);
		else
			printf("Error writing result to file %s \n", outError);
	}
	else
		printf("Error reading file %s with input test signal\n", outError);

	return error;
}
