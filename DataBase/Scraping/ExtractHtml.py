# Due to limited number of zipcode searches allowed on melissa.com, this code
# allows for unlimited use of the html for scraping purposes.
# 	Sources scraped from:
# 		https://www.melissa.com/lookups/np.asp?zip=80304
# 		https://www.melissa.com/lookups/np.asp?zip=80503
# 		https://www.melissa.com/lookups/np.asp?zip=80302
# 		https://www.melissa.com/lookups/np.asp?zip=80301
# 		https://www.melissa.com/lookups/np.asp?zip=80309
# 		https://www.melissa.com/lookups/np.asp?zip=80303
# 		https://www.melissa.com/lookups/np.asp?zip=80305
# Author - Nikolai Alexander

import functools
import requests
from bs4 import BeautifulSoup

zipcodes = ['80304', '80503', '80302', '80301', '80309', '80303', '80305']

for i in range(0, len(zipcodes)) :
	# Pull HTML code from url
	url = 'https://www.melissa.com/lookups/np.asp?zip=' + zipcodes[i]
	html = requests.get(url).text
	soup = BeautifulSoup(html,'lxml')

	# Write code to text file
	filename = zipcodes[i] + '.html'
	with open(filename, 'w', encoding='utf-8') as f_out:
		f_out.write(str(soup.prettify))