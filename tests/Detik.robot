*** Settings ***
Library             Selenium2Library
Test Setup          Open Browser 		${URL} 		${BROWSER}
Test Teardown       Close Browser

*** Variable ***
${URL} 							https://www.detik.com/
${BROWSER} 						chrome
${LOGO} 						class=logodetik
${DETIK_NEWS_HEADER} 			CSS=a[href="https://news.detik.com"]
#${DETIK_FINANCE_HEADER} 		CSS=a[href="https://finance.detik.com"]


*** Keywords ***
Click Detik News On Header
	Click Element 		${DETIK_NEWS_HEADER}	

Check Logo
	Element Should Be Visible 	${LOGO}
	
*** Test Case ***
Detik Finance1
	Check Logo
	Click Detik News On Header
