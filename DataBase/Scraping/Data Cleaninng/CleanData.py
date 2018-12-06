# Cleaning the compiled data from annotations
# Author - Nikolai Alexander

import pandas as pd
import numpy as np
import string
import re

def read_data() :
	return pd.read_csv('charitydata_raw.csv', index_col = 0, encoding = 'utf-8')

def clean_data(data) :
	# Turn NULL values into actual NULL values
	data.replace('NULL', np.nan)
	data.replace('Null', np.nan)
	data.replace('null', np.nan)



	# Create uniform formatting for the address column
	if 'address' in data :
		data['address'] = data['address'].str.lower()
		data['address'] = data['address'].str.title()

	# Format Phone Numbers to ###-###-###
	if 'phone_number' in data :
		data['phone_number'] = data['phone_number'].str.replace('[^\w\s]','')
		data['phone_number'] = data['phone_number'].str.replace(' ','')
		data['phone_number'] = data['phone_number'].astype(str).apply(lambda x: x[:3] + '-' + x[3:6] + '-' + x[6:10])
		data['phone_number'] = data['phone_number'].replace('nan--',np.nan)

	# Create uniform formatting for the category column
	if 'category_name' in data :
		data['category_name'] = data['category_name'].str.lower()
		data['category_name'] = data['category_name'].str.title()

	if 'charity_description' in data :
		data['charity_description'] = data['charity_description'].str.replace('\n','<br>')
		# Delete rows that go over character limit
		for index, row in data.iterrows() :
			if len(row['charity_description']) > 2000 :
				print(len(row['charity_description']))
				data = data[data.charity_description != row['charity_description']]


	if 'charity_tag' in data :
		data['charity_tag'] = data['charity_tag'].str.replace('\n',' ')
		# Delete rows that go over character limit
		for index, row in data.iterrows() :
			if len(row['charity_tag']) > 800 :
				print(len(row['charity_tag']))
				data = data[data.charity_tag != row['charity_tag']]



	return data 

def main() : 
	data = read_data()


	data = clean_data(data)

	charity = data.iloc[:,0:13]
	financial = data.iloc[:,13:]

	# print(list(charity))
	# print(list(financial))

	charity.to_csv('../../charity.csv', encoding = 'utf-8', index = False)
	financial.to_csv('../../financial.csv', encoding = 'utf-8', index = False)

	return

if __name__ == "__main__":
	main()