# This algorithm pulls the HTML code from the files save in the Zipcodes directory
# and extracts the charity names, cities, states, and zipcodes of all charities within
# the city of Boulder.
# Author - Nikolai Alexander

import re
import functools
import requests
from bs4 import BeautifulSoup
import pandas as pd

# List of all zipcodes in the city of Boulder
zipcodes = ['80304', '80503', '80302', '80301', '80309', '80303', '80305']

charity_names = []
cities = []
states = []
zips = []

df = pd.DataFrame()

# Loop through all the zipcodes
for i in range(0, len(zipcodes)) :
	# Pull HTML code from html file
	url = 'Zipcodes/' + zipcodes[i] + '.html'
	html = open(url).read()
	soup = BeautifulSoup(html,'html.parser')

	# Extract the table from the HTML code
	table = soup.find('table', {'class','Tableresultborder'})

	# Extract the city, state, and zipcodes of all charities
	location = table.find('td',{'class','headtitresp'})
	for bold in location('b') :
		location = bold.text
	location = re.sub(r'[^\w\s]','',location)
	city, state, zipcode = location.split()

	# Add to arrays to 
	for link in table('a') :
		if link.text != 'Subsection' :
			charity_names.append(link.text)
			cities.append(city)
			states.append(state)
			zips.append(zipcode)

# Add all scraped values to a dataframe
df['charity_name'] = charity_names
df['city'] = cities
df['state'] = states
df['zipcodes'] = zips

# Remove all duplicate charities
df.drop_duplicates(subset='charity_name', keep='last', inplace=True)

df.to_csv('charitydata_raw.csv')