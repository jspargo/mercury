#!/usr/bin/env python
import requests
import json


def getCurrentTemp():
    response = requests.get('http://52.19.110.248:8000/latest/')
    data = json.loads(response.text)
    temp = data[0]['recorded_temp']
    date = data[0]['recorded_date']
    return temp

print getCurrentTemp()
