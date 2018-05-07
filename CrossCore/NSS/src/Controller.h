///////////////////////////////////////////////////////////
//  Controller.h
//  Implementation of the Class Controller
//  Created on:      06-aug-2014 23:31:01
//  Original author: kbe
///////////////////////////////////////////////////////////

#if !defined(CONTROLLER__INCLUDED_)
#define CONTROLLER__INCLUDED_

#include "HAL.h"
#include "LMSFilter.h"

class Controller
{

public:

	Controller(LMSFilter *lms);
	virtual ~Controller();

	void incParamValue();
	void decParamValue();
	void pressedSwitch(short sw);

protected:
    void updateUI();
	LMSFilter *m_lms;
	short m_parVal;
};

#endif // !defined(CONTROLLER__INCLUDED_)
