*** Settings ***
Library             Selenium2Library

*** Variable ***
${URL} 				https://www.detik.com/
${BROWSER} 			chrome
${LINUX_DRIVER} 	/usr/local/bin/chromedriver
${MAC_DRIVER} 		/usr/local/bin/chromedriver
${WIN_DRIVER} 		../../driver/win/chromedriver.exe


*** Keywords ***
Open Browser to Page
	Open Browser 	${URL} 		${BROWSER}




Open Chrome Browser to Page
    [Documentation]     Opens _Google Chrome_ to a given web page.
    ...                 For more information on what capabilities that _Google Chrome_
    ...                 supports, see [https://sites.google.com/a/chromium.org/chromedriver/capabilities%7Cthis Capabilities & ChromeOptions page].

    ${chrome_options}=    	Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method 			${chrome_options}    add_argument    test-type
    Call Method 			${chrome_options}    add_argument    start-maximized
    Call Method 			${chrome_options}    add_argument    --disable-extensions
    Call Method 			${chrome_options}    add_argument    --headless 		#For running on background
    ${platform}= 			Evaluate 	sys.platform 	sys
    Log To Console 			${platform}
    Run Keyword If 			sys.platform == 'linux' 		Create Webdriver 	Chrome 		chrome 		chrome_options=${chrome_options} 		executable_path=${LINUX_DRIVER}
    ...		ELSE IF 		sys.platform == 'darwin' 		Create Webdriver 	Chrome 		chrome 		chrome_options=${chrome_options} 		executable_path=${MAC_DRIVER}
    ... 	ELSE IF 		sys.platform == 'windows' 		Create Webdriver 	Chrome 		chrome 		chrome_options=${chrome_options} 		executable_path=${WIN_DRIVER} 
    ... 	ELSE            Log To Console                  "Unknown Platform"
    Go To    ${URL}