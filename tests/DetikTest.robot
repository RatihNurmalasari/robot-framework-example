*** Settings ***
Test Setup          Resources.Open Chrome Browser to Page
Test Teardown       Close Browser
Resource            ../main/common/Resources.robot
Resource            ../main/pages/DetikHome.robot
Resource            ../main/pages/DetikFinance.robot

*** Test Case ***
Detik Finance1
	DetikHome.Click Detik News On Header

Detik Finance2
	DetikHome.Click Detik News On Header

Detik Finance3
	DetikHome.Click Detik News On Header
	