require 'httparty'

response = HTTParty.get('https://myttc.ca/finch_station.json')
data = JSON.parse(response.body)
# data.keys
# data['stops']
# etc