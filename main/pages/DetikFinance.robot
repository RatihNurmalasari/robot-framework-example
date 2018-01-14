*** Variable ***
${LOGO} 						class=logodetik
${DETIK_NEWS_HEADER} 			CSS=a[href="https://news.detik.com"]
#${DETIK_FINANCE_HEADER} 		CSS=a[href="https://finance.detik.com"]
#${DETIK_HOT_HEADER} 			CSS=a[href="https://news.detik.com"]
#${DETIK_INET_HEADER} 			CSS=a[href="https://news.detik.com"]
#${DETTIK_SPORT_HEADER} 		CSS=a[href="https://news.detik.com"]


*** Keywords ***
Click Detik News On Header
	Click Element 		${DETIK_NEWS_HEADER}	