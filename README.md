# COVID 19 ~ cmd

*covid19* small windows batch file.Which will output coronavirus stats from api

# Add to path

*1.* Open ```System Properties```

*2.* Click ```Advanced system settings``` in the sidebar.

*3.*  Click ```Environment Variables...```

*4.* Select ```PATH``` in the ```System variables``` section

*5.* Click ```Edit```

*6.* Add covid19's path to the end of the list.For example:

```
C:\Documents\covid19\bin\
```

# Usage

```
F:\>covid19 -h
usage: covid19.bat [-h] [-c COUNTRY]

optional arguments:
  -h, --help            show this help message and exit
  -c COUNTRY, --country COUNTRY
                        Confirmed COVID-19 cases by country
```
## Requirements

* Python3

* Python in PATH Environmental Variable 

## Output
* *World wide:*
```
F:\>covid19
-- COVID-19 Worldwide --

Total cases: 1,780,356
Total deaths: 108,828
Total recovered: 404,032
```

* *By country:*

```
F:\>covid19 -c usa
-- COVID-19 usa --

Total cases: 532,879
Total deaths: 20,577
Total recovered: 30,453
Active cases: 481,849

Today cases: 0
Today deaths: 0
```

### *Note: this stats from 12/04/2020 10:10:30 am*

# Thanks

⭐ [Covid-19 API](https://coronavirus-19-api.herokuapp.com/all)



# By


🙄 By Muhammed `Nazeem`

📧 [Gmail](mailto:nazeemnob17@gmail.com)

👔 [Linkedin](https://www.linkedin.com/in/muhammad-nazeem-5ab092180/)