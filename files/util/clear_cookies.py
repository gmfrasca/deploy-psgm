import requests

s = requests.session()

s.get('http://benchapp.com')
print(s.cookies.keys())
