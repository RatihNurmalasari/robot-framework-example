*** Settings ***
Test Setup          Resources.Open Chrome Browser to Page
Test Teardown       Close Browser
Resource            ../common/Resources.robot
Resource            ../pages/DetikHome.robot
Resource            ../pages/DetikFinance.robot

*** Test Case ***
Detik Finance
	DetikHome.Click Detik News On Header
	