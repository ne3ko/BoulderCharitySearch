# Cleaning the compiled data from annotations
# Author - Nikolai Alexander

import pandas as pd
import numpy as np
import string
import re

def read_data() :
	return pd.DataFrame.from_csv('charitydata_raw.csv')

def clean_data(data) :
	# Turn NULL values into actual NULL values
	data.replace('NULL', np.nan)
	data.replace('Null', np.nan)
	data.replace('null', np.nan)



	# Create uniform formatting for the address column
	data['address'] = data['address'].str.lower()
	data['address'] = data['address'].str.title()

	# Format Phone Numbers to ###-###-###
	data['phone_number'] = data['phone_number'].str.replace('[^\w\s]','')
	data['phone_number'] = data['phone_number'].str.replace(' ','')
	data['phone_number'] = data['phone_number'].astype(str).apply(lambda x: x[:3] + '-' + x[3:6] + '-' + x[6:10])
	data['phone_number'] = data['phone_number'].replace('nan--',np.nan)

	return data 

def main() : 
	data = read_data()

	data = clean_data(data)

	data.to_csv('charitydata_clean.csv')

if __name__ == "__main__":
	main()