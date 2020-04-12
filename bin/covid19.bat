@echo off & python -x "%~f0" %* & goto :eof
import argparse
import sys
import requests
def Covid(argm):
   if (argm == 'worldwide' or argm == 'all'):
      try:
         response = requests.get("https://coronavirus-19-api.herokuapp.com/all")
         cases = response.json()['cases']
         deaths= response.json()['deaths']
         recovered = response.json()['recovered']

         cases =  '{:,}'.format(cases)
         deaths = '{:,}'.format(deaths)
         recovered =  '{:,}'.format(recovered)
         sentence = "Total cases: {}\nTotal deaths: {}\nTotal recovered: {}".format(str(cases),str(deaths),str(recovered))
         print('-- COVID-19 Worldwide --\n')
         print(sentence)
      except:
         print("-- Connection Error --")
   else:
      try:
         response = requests.get("https://coronavirus-19-api.herokuapp.com/countries/{}".format(argm))
         cases = response.json()['cases']
         deaths = response.json()['deaths']
         recovered = response.json()['recovered']
         active = response.json()['active']
         todayCases = response.json()['todayCases']
         todayDeaths = response.json()['todayDeaths']

         cases = '{:,}'.format(cases)
         deaths = '{:,}'.format(deaths)
         recovered = '{:,}'.format(recovered)
         active = '{:,}'.format(active)
         todayCases = '{:,}'.format(todayCases)
         todayDeaths = '{:,}'.format(todayDeaths)

         sentence = "Total cases: {}\nTotal deaths: {}\nTotal recovered: {}\nActive cases: {}\n\nToday cases: {}\nToday deaths: {}".format(str(cases),str(deaths),str(recovered),str(active),str(todayCases),str(todayDeaths))
         print("-- COVID-19 {} -- \n".format(argm))
         print(sentence)
      except:
         print("-- Country not found --")
parser = argparse.ArgumentParser()
parser.add_argument('-c','--country',help="Confirmed COVID-19 cases by country",default="all")
args = parser.parse_args()

if __name__ == '__main__':
    Covid(args.country)