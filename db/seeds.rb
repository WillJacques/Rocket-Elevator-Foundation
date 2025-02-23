# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"


AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

AdminUser.create!(email: 'codeboxx@example.com', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'nicolas.genest@codeboxx.biz', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'nadya.fortier@codeboxx.biz', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'martin.chantal@codeboxx.biz', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'mathieu.houde@codeboxx.biz', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'david.boutin@codeboxx.biz', password: 'password', password_confirmation: 'password') 
AdminUser.create!(email: 'mathieu.lortie@codeboxx.biz', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'thomas.carrier@codeboxx.biz', password: 'password', password_confirmation: 'password')


Employee.create(first_name:"Nicolas", last_name:"Genest", title:"CEO", email:"nicolas.genest@codeboxx.biz", admin_user_id:3, phone_number:Faker::PhoneNumber.cell_phone)
Employee.create(first_name:"Nadya", last_name:"Fortier", title:"Director", email:"nadya.fortier@codeboxx.biz", admin_user_id:4, phone_number:Faker::PhoneNumber.cell_phone)
Employee.create(first_name:"Martin", last_name:"Chantal", title:"Director Assistant", email:"martin.chantal@codeboxx.biz", admin_user_id:5, phone_number:Faker::PhoneNumber.cell_phone)
Employee.create(first_name:"Mathieu", last_name:"Houde", title:"Captain", email:"mathieu.houde@codeboxx.biz", admin_user_id:6, phone_number:Faker::PhoneNumber.cell_phone)
Employee.create(first_name:"David", last_name:"Boutin", title:"Engineer", email:"david.boutin@codeboxx.biz", admin_user_id:7, phone_number:Faker::PhoneNumber.cell_phone)
Employee.create(first_name:"Mathieu", last_name:"Lortie", title:"Engineer", email:"mathieu.lortie@codeboxx.biz", admin_user_id:8, phone_number:Faker::PhoneNumber.cell_phone)
Employee.create(first_name:"Thomas", last_name:"Carrier", title:"Engineer", email:"thomas.carrier@codeboxx.biz", admin_user_id:9, phone_number:Faker::PhoneNumber.cell_phone)

# employRan = rand(1..7)

# puts "-------------------------------------------------------------"
# puts employRan
# puts Employee.find(employRan)[:first_name] +" "+ Employee.find(employRan)[:last_name]
# puts " ---------------------------------------------------------------------------------"

addressType = ["Billing", "Shipping", "Home", "Business"]
status = ["Inactive","Active"]
entity = ["Building", "Customer"]


# address list as array of objects
add = [
        {
            "address1": "1745 T Street Southeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20020",
            "coordinates": {
                "lat": 38.867033,
                "lng": -76.979235
            }
        },
        {
            "address1": "6007 Applegate Lane",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40219",
            "coordinates": {
                "lat": 38.1343013,
                "lng": -85.6498512
            }
        },
        {
            "address1": "560 Penstock Drive",
            "address2": "",
            "city": "Grass Valley",
            "state": "CA",
            "postalCode": "95945",
            "coordinates": {
                "lat": 39.213076,
                "lng": -121.077583
            }
        },
        {
            "address1": "150 Carter Street",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.76556000000001,
                "lng": -72.473091
            }
        },
        {
            "address1": "2721 Lindsay Avenue",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40206",
            "coordinates": {
                "lat": 38.263793,
                "lng": -85.700243
            }
        },
        {
            "address1": "18 Densmore Drive",
            "address2": "",
            "city": "Essex",
            "state": "VT",
            "postalCode": "05452",
            "coordinates": {
                "lat": 44.492953,
                "lng": -73.101883
            }
        },
        {
            "address1": "637 Britannia Drive",
            "address2": "",
            "city": "Vallejo",
            "state": "CA",
            "postalCode": "94591",
            "coordinates": {
                "lat": 38.10476999999999,
                "lng": -122.193849
            }
        },
        {
            "address1": "5601 West Crocus Drive",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85306",
            "coordinates": {
                "lat": 33.6152469,
                "lng": -112.179737
            }
        },
        {
            "address1": "5403 Illinois Avenue",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37209",
            "coordinates": {
                "lat": 36.157077,
                "lng": -86.853827
            }
        },
        {
            "address1": "8821 West Myrtle Avenue",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85305",
            "coordinates": {
                "lat": 33.5404296,
                "lng": -112.2488391
            }
        },
        {
            "address1": "2203 7th Street Road",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40208",
            "coordinates": {
                "lat": 38.218107,
                "lng": -85.779006
            }
        },
        {
            "address1": "6463 Vrain Street",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80003",
            "coordinates": {
                "lat": 39.814056,
                "lng": -105.046913
            }
        },
        {
            "address1": "87 Horseshoe Drive",
            "address2": "",
            "city": "West Windsor",
            "state": "VT",
            "postalCode": "05037",
            "coordinates": {
                "lat": 43.4731793,
                "lng": -72.4967532
            }
        },
        {
            "address1": "60 Desousa Drive",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.7409259,
                "lng": -72.5619104
            }
        },
        {
            "address1": "4 Old Colony Way",
            "address2": "",
            "city": "Yarmouth",
            "state": "MA",
            "postalCode": "02664",
            "coordinates": {
                "lat": 41.697168,
                "lng": -70.189992
            }
        },
        {
            "address1": "314 South 17th Street",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37206",
            "coordinates": {
                "lat": 36.1719075,
                "lng": -86.740228
            }
        },
        {
            "address1": "1649 Timberridge Court",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72704",
            "coordinates": {
                "lat": 36.084563,
                "lng": -94.206082
            }
        },
        {
            "address1": "5461 West Shades Valley Drive",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36108",
            "coordinates": {
                "lat": 32.296422,
                "lng": -86.34280299999999
            }
        },
        {
            "address1": "629 Debbie Drive",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37076",
            "coordinates": {
                "lat": 36.208114,
                "lng": -86.58621199999999
            }
        },
        {
            "address1": "22572 Toreador Drive",
            "address2": "",
            "city": "Salinas",
            "state": "CA",
            "postalCode": "93908",
            "coordinates": {
                "lat": 36.602449,
                "lng": -121.699071
            }
        },
        {
            "address1": "3034 Mica Street",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72704",
            "coordinates": {
                "lat": 36.0807929,
                "lng": -94.2066449
            }
        },
        {
            "address1": "3729 East Mission Boulevard",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.0919353,
                "lng": -94.10654219999999
            }
        },
        {
            "address1": "5114 Greentree Drive",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37211",
            "coordinates": {
                "lat": 36.0618539,
                "lng": -86.738508
            }
        },
        {
            "address1": "3466 Southview Avenue",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36111",
            "coordinates": {
                "lat": 32.341227,
                "lng": -86.2846859
            }
        },
        {
            "address1": "1513 Cathy Street",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31415",
            "coordinates": {
                "lat": 32.067416,
                "lng": -81.125331
            }
        },
        {
            "address1": "600 West 19th Avenue",
            "address2": "APT B",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99503",
            "coordinates": {
                "lat": 61.203115,
                "lng": -149.894107
            }
        },
        {
            "address1": "1208 Elkader Court North",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37013",
            "coordinates": {
                "lat": 36.080049,
                "lng": -86.60116099999999
            }
        },
        {
            "address1": "210 Green Road",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06042",
            "coordinates": {
                "lat": 41.7909099,
                "lng": -72.51195129999999
            }
        },
        {
            "address1": "49548 Road 200",
            "address2": "",
            "city": "O'Neals",
            "state": "CA",
            "postalCode": "93645",
            "coordinates": {
                "lat": 37.153463,
                "lng": -119.648192
            }
        },
        {
            "address1": "81 Seaton Place Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20001",
            "coordinates": {
                "lat": 38.9149499,
                "lng": -77.01170259999999
            }
        },
        {
            "address1": "1267 Martin Street",
            "address2": "#203",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37203",
            "coordinates": {
                "lat": 36.1404897,
                "lng": -86.7695179
            }
        },
        {
            "address1": "7431 Candace Way",
            "address2": "#1",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40214",
            "coordinates": {
                "lat": 38.142768,
                "lng": -85.7717132
            }
        },
        {
            "address1": "1407 Walden Court",
            "address2": "",
            "city": "Crofton",
            "state": "MD",
            "postalCode": "21114",
            "coordinates": {
                "lat": 39.019306,
                "lng": -76.660653
            }
        },
        {
            "address1": "5906 Milton Avenue",
            "address2": "",
            "city": "Deale",
            "state": "MD",
            "postalCode": "20751",
            "coordinates": {
                "lat": 38.784451,
                "lng": -76.54125499999999
            }
        },
        {
            "address1": "74 Springfield Street",
            "address2": "B",
            "city": "Agawam",
            "state": "MA",
            "postalCode": "01001",
            "coordinates": {
                "lat": 42.0894922,
                "lng": -72.6297558
            }
        },
        {
            "address1": "2905 Stonebridge Court",
            "address2": "",
            "city": "Norman",
            "state": "OK",
            "postalCode": "73071",
            "coordinates": {
                "lat": 35.183319,
                "lng": -97.40210499999999
            }
        },
        {
            "address1": "20930 Todd Valley Road",
            "address2": "",
            "city": "Foresthill",
            "state": "CA",
            "postalCode": "95631",
            "coordinates": {
                "lat": 38.989466,
                "lng": -120.883108
            }
        },
        {
            "address1": "5928 West Mauna Loa Lane",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85306",
            "coordinates": {
                "lat": 33.6204899,
                "lng": -112.18702
            }
        },
        {
            "address1": "802 Madison Street Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20011",
            "coordinates": {
                "lat": 38.9582381,
                "lng": -77.0244287
            }
        },
        {
            "address1": "2811 Battery Place Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20016",
            "coordinates": {
                "lat": 38.9256252,
                "lng": -77.0982646
            }
        },
        {
            "address1": "210 Lacross Lane",
            "address2": "",
            "city": "Westmore",
            "state": "VT",
            "postalCode": "05860",
            "coordinates": {
                "lat": 44.771005,
                "lng": -72.048664
            }
        },
        {
            "address1": "2010 Rising Hill Drive",
            "address2": "",
            "city": "Norman",
            "state": "OK",
            "postalCode": "73071",
            "coordinates": {
                "lat": 35.177281,
                "lng": -97.411869
            }
        },
        {
            "address1": "388 East Main Street",
            "address2": "",
            "city": "Middlebury",
            "state": "VT",
            "postalCode": "05753",
            "coordinates": {
                "lat": 43.9727945,
                "lng": -73.1023187
            }
        },
        {
            "address1": "450 Kinhawk Drive",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37211",
            "coordinates": {
                "lat": 36.030927,
                "lng": -86.71949099999999
            }
        },
        {
            "address1": "131 Westerly Street",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06042",
            "coordinates": {
                "lat": 41.7906813,
                "lng": -72.53559729999999
            }
        },
        {
            "address1": "308 Woodleaf Court",
            "address2": "",
            "city": "Glen Burnie",
            "state": "MD",
            "postalCode": "21061",
            "coordinates": {
                "lat": 39.1425931,
                "lng": -76.6238441
            }
        },
        {
            "address1": "8502 Madrone Avenue",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40258",
            "coordinates": {
                "lat": 38.1286407,
                "lng": -85.8678042
            }
        },
        {
            "address1": "23 Sable Run Lane",
            "address2": "",
            "city": "Methuen",
            "state": "MA",
            "postalCode": "01844",
            "coordinates": {
                "lat": 42.759847,
                "lng": -71.157721
            }
        },
        {
            "address1": "716 Waller Road",
            "address2": "",
            "city": "Brentwood",
            "state": "TN",
            "postalCode": "37027",
            "coordinates": {
                "lat": 35.998892,
                "lng": -86.696529
            }
        },
        {
            "address1": "416 McIver Street",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37211",
            "coordinates": {
                "lat": 36.10436,
                "lng": -86.74411599999999
            }
        },
        {
            "address1": "1508 Massachusetts Avenue Southeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20003",
            "coordinates": {
                "lat": 38.887255,
                "lng": -76.98318499999999
            }
        },
        {
            "address1": "5615 West Villa Maria Drive",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85308",
            "coordinates": {
                "lat": 33.650988,
                "lng": -112.180624
            }
        },
        {
            "address1": "3162 Martin Luther King Junior Boulevard",
            "address2": "#2",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72704",
            "coordinates": {
                "lat": 36.05233310000001,
                "lng": -94.2056987
            }
        },
        {
            "address1": "5306 Ritchie Highway",
            "address2": "",
            "city": "Baltimore",
            "state": "MD",
            "postalCode": "21225",
            "coordinates": {
                "lat": 39.221978,
                "lng": -76.614183
            }
        },
        {
            "address1": "109 Summit Street",
            "address2": "",
            "city": "Burlington",
            "state": "VT",
            "postalCode": "05401",
            "coordinates": {
                "lat": 44.4729749,
                "lng": -73.2026566
            }
        },
        {
            "address1": "816 West 19th Avenue",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99503",
            "coordinates": {
                "lat": 61.203221,
                "lng": -149.898655
            }
        },
        {
            "address1": "172 Alburg Springs Road",
            "address2": "",
            "city": "Alburgh",
            "state": "VT",
            "postalCode": "05440",
            "coordinates": {
                "lat": 44.995827,
                "lng": -73.2201539
            }
        },
        {
            "address1": "159 Downey Drive",
            "address2": "A",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.7800126,
                "lng": -72.5754309
            }
        },
        {
            "address1": "125 John Street",
            "address2": "",
            "city": "Santa Cruz",
            "state": "CA",
            "postalCode": "95060",
            "coordinates": {
                "lat": 36.950901,
                "lng": -122.046881
            }
        },
        {
            "address1": "1101 Lotus Avenue",
            "address2": "",
            "city": "Glen Burnie",
            "state": "MD",
            "postalCode": "21061",
            "coordinates": {
                "lat": 39.191982,
                "lng": -76.6525659
            }
        },
        {
            "address1": "8376 Albacore Drive",
            "address2": "",
            "city": "Pasadena",
            "state": "MD",
            "postalCode": "21122",
            "coordinates": {
                "lat": 39.110409,
                "lng": -76.46565799999999
            }
        },
        {
            "address1": "491 Arabian Way",
            "address2": "",
            "city": "Grand Junction",
            "state": "CO",
            "postalCode": "81504",
            "coordinates": {
                "lat": 39.07548999999999,
                "lng": -108.474785
            }
        },
        {
            "address1": "12245 West 71st Place",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80004",
            "coordinates": {
                "lat": 39.8267078,
                "lng": -105.1366798
            }
        },
        {
            "address1": "80 North East Street",
            "address2": "#4",
            "city": "Holyoke",
            "state": "MA",
            "postalCode": "01040",
            "coordinates": {
                "lat": 42.2041219,
                "lng": -72.5977704
            }
        },
        {
            "address1": "4695 East Huntsville Road",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.0471975,
                "lng": -94.0946286
            }
        },
        {
            "address1": "310 Timrod Road",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.756758,
                "lng": -72.493501
            }
        },
        {
            "address1": "1364 Capri Drive",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32405",
            "coordinates": {
                "lat": 30.2207276,
                "lng": -85.6808795
            }
        },
        {
            "address1": "132 Laurel Green Court",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31419",
            "coordinates": {
                "lat": 32.0243075,
                "lng": -81.2468102
            }
        },
        {
            "address1": "6657 West Rose Garden Lane",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85308",
            "coordinates": {
                "lat": 33.676018,
                "lng": -112.201658
            }
        },
        {
            "address1": "519 West 75th Avenue",
            "address2": "#APT 000003",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99518",
            "coordinates": {
                "lat": 61.15288690000001,
                "lng": -149.889133
            }
        },
        {
            "address1": "31353 Santa Elena Way",
            "address2": "",
            "city": "Union City",
            "state": "CA",
            "postalCode": "94587",
            "coordinates": {
                "lat": 37.593981,
                "lng": -122.059762
            }
        },
        {
            "address1": "8398 West Denton Lane",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85305",
            "coordinates": {
                "lat": 33.515353,
                "lng": -112.240812
            }
        },
        {
            "address1": "700 Winston Place",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99504",
            "coordinates": {
                "lat": 61.215882,
                "lng": -149.737337
            }
        },
        {
            "address1": "232 Maine Avenue",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32401",
            "coordinates": {
                "lat": 30.1527033,
                "lng": -85.63207129999999
            }
        },
        {
            "address1": "1 Kempf Drive",
            "address2": "",
            "city": "Easton",
            "state": "MA",
            "postalCode": "02375",
            "coordinates": {
                "lat": 42.0505989,
                "lng": -71.08029379999999
            }
        },
        {
            "address1": "5811 Crossings Boulevard",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37013",
            "coordinates": {
                "lat": 36.0370847,
                "lng": -86.6413728
            }
        },
        {
            "address1": "5108 Franklin Street",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31405",
            "coordinates": {
                "lat": 32.034987,
                "lng": -81.121928
            }
        },
        {
            "address1": "913 Fallview Trail",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37211",
            "coordinates": {
                "lat": 36.02419100000001,
                "lng": -86.718305
            }
        },
        {
            "address1": "270 Chrissy's Court",
            "address2": "",
            "city":"Bristol",
            "state": "VT",
            "postalCode": "05443",
            "coordinates": {
                "lat": 44.1710043,
                "lng": -73.1065617
            }
        },
        {
            "address1": "130 Old Route 103",
            "address2": "",
            "city": "Chester",
            "state": "VT",
            "postalCode": "05143",
            "coordinates": {
                "lat": 43.224335,
                "lng": -72.54227399999999
            }
        },
        {
            "address1": "10826 Pointe Royal Drive",
            "address2": "",
            "city": "Bakersfield",
            "state": "CA",
            "postalCode": "93311",
            "coordinates": {
                "lat": 35.2930007,
                "lng": -119.1225908
            }
        },
        {
            "address1": "74 Ranch Drive",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36109",
            "coordinates": {
                "lat": 32.383322,
                "lng": -86.235124
            }
        },
        {
            "address1": "6601 West Ocotillo Road",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85301",
            "coordinates": {
                "lat": 33.53433,
                "lng": -112.2011246
            }
        },
        {
            "address1": "19416 Barclay Road",
            "address2": "",
            "city": "Castro Valley",
            "state": "CA",
            "postalCode": "94546",
            "coordinates": {
                "lat": 37.70382,
                "lng": -122.091054
            }
        },
        {
            "address1": "1347 Blackwalnut Court",
            "address2": "",
            "city": "Annapolis",
            "state": "MD",
            "postalCode": "21403",
            "coordinates": {
                "lat": 38.936881,
                "lng": -76.475823
            }
        },
        {
            "address1": "1770 Colony Way",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72704",
            "coordinates": {
                "lat": 36.0867,
                "lng": -94.229754
            }
        },
        {
            "address1": "165 Saint John Street",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.7762171,
                "lng": -72.5410548
            }
        },
        {
            "address1": "2409 Research Boulevard",
            "address2": "",
            "city": "Fort Collins",
            "state": "CO",
            "postalCode": "80526",
            "coordinates": {
                "lat": 40.554586,
                "lng": -105.087852
            }
        },
        {
            "address1": "1903 Bashford Manor Lane",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40218",
            "coordinates": {
                "lat": 38.1977059,
                "lng": -85.675288
            }
        },
        {
            "address1": "8315 Surf Drive",
            "address2": "",
            "city": "Panama City Beach",
            "state": "FL",
            "postalCode": "32408",
            "coordinates": {
                "lat": 30.163458,
                "lng": -85.785449
            }
        },
        {
            "address1": "3301 Old Muldoon Road",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99504",
            "coordinates": {
                "lat": 61.1908348,
                "lng": -149.7340096
            }
        },
        {
            "address1": "8800 Cordell Circle",
            "address2": "#APT 000003",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99502",
            "coordinates": {
                "lat": 61.1409305,
                "lng": -149.9437822
            }
        },
        {
            "address1": "117 East Cook Avenue",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99501",
            "coordinates": {
                "lat": 61.230336,
                "lng": -149.883795
            }
        },
        {
            "address1": "6231 North 67th Avenue",
            "address2": "#241",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85301",
            "coordinates": {
                "lat": 33.5279666,
                "lng": -112.2022551
            }
        },
        {
            "address1": "8505 Waters Avenue",
            "address2": "#66",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31406",
            "coordinates": {
                "lat": 31.9901877,
                "lng": -81.1070672
            }
        },
        {
            "address1": "7 Underwood Place Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20012",
            "coordinates": {
                "lat": 38.969351,
                "lng": -77.009722
            }
        },
        {
            "address1": "21950 Arnold Center Road",
            "address2": "",
            "city": "Carson",
            "state": "CA",
            "postalCode": "90810",
            "coordinates": {
                "lat": 33.8272706,
                "lng": -118.2302826
            }
        },
        {
            "address1": "1427 South Carolina Avenue Southeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20003",
            "coordinates": {
                "lat": 38.886615,
                "lng": -76.9845349
            }
        },
        {
            "address1": "1420 Turtleback Trail",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32413",
            "coordinates": {
                "lat": 30.281084,
                "lng": -85.9677169
            }
        },
        {
            "address1": "6990 Pierson Street",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80004",
            "coordinates": {
                "lat": 39.824425,
                "lng": -105.122103
            }
        },
        {
            "address1": "376 North Williams Drive",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.067997,
                "lng": -94.142563
            }
        },
        {
            "address1": "3617 Menlo Court",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36116",
            "coordinates": {
                "lat": 32.307397,
                "lng": -86.26001099999999
            }
        },
        {
            "address1": "711 Parker Street",
            "address2": "",
            "city": "East Longmeadow",
            "state": "MA",
            "postalCode": "01028",
            "coordinates": {
                "lat": 42.082262,
                "lng": -72.488113
            }
        },
        {
            "address1": "8521 Crystal Street",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99502",
            "coordinates": {
                "lat": 61.143426,
                "lng": -149.94665
            }
        },
        {
            "address1": "1622 Edgar D Nixon Avenue",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36104",
            "coordinates": {
                "lat": 32.356384,
                "lng": -86.3128909
            }
        },
        {
            "address1": "1608 Gales Street Northeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20002",
            "coordinates": {
                "lat": 38.8985542,
                "lng": -76.9813444
            }
        },
        {
            "address1": "122 East Hayes Street",
            "address2": "",
            "city": "Norman",
            "state": "OK",
            "postalCode": "73069",
            "coordinates": {
                "lat": 35.232121,
                "lng": -97.445053
            }
        },
        {
            "address1": "5144 Cattail Court",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.041153,
                "lng": -94.087419
            }
        },
        {
            "address1": "131 Kent Drive",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06042",
            "coordinates": {
                "lat": 41.803084,
                "lng": -72.492786
            }
        },
        {
            "address1": "2313 Vegas Avenue",
            "address2": "",
            "city": "Castro Valley",
            "state": "CA",
            "postalCode": "94546",
            "coordinates": {
                "lat": 37.689189,
                "lng": -122.076775
            }
        },
        {
            "address1": "5420 Sunset Avenue",
            "address2": "",
            "city": "Panama City Beach",
            "state": "FL",
            "postalCode": "32408",
            "coordinates": {
                "lat": 30.145603,
                "lng": -85.755095
            }
        },
        {
            "address1": "242 North Ash Street",
            "address2": "",
            "city": "Fruita",
            "state": "CO",
            "postalCode": "81521",
            "coordinates": {
                "lat": 39.161544,
                "lng": -108.725378
            }
        },
        {
            "address1": "38676 Greenwich Circle",
            "address2": "",
            "city": "Fremont",
            "state": "CA",
            "postalCode": "94536",
            "coordinates": {
                "lat": 37.562256,
                "lng": -121.976451
            }
        },
        {
            "address1": "2426 East Onyx Trail",
            "address2": "#6",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.065707,
                "lng": -94.1276125
            }
        },
        {
            "address1": "110 Seaton Place Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20001",
            "coordinates": {
                "lat": 38.9146701,
                "lng": -77.01264680000001
            }
        },
        {
            "address1": "5385 Iris Street",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80002",
            "coordinates": {
                "lat": 39.794498,
                "lng": -105.106056
            }
        },
        {
            "address1": "5628 West Tonopah Drive",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85308",
            "coordinates": {
                "lat": 33.6710947,
                "lng": -112.1810955
            }
        },
        {
            "address1": "65 Bay Drive",
            "address2": "",
            "city": "Annapolis",
            "state": "MD",
            "postalCode": "21403",
            "coordinates": {
                "lat": 38.937493,
                "lng": -76.45638699999999
            }
        },
        {
            "address1": "7401 North 61st Drive",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85301",
            "coordinates": {
                "lat": 33.5450005,
                "lng": -112.191417
            }
        },
        {
            "address1": "8 Watkins Road",
            "address2": "",
            "state": "VT",
            "postalCode": "05468",
            "coordinates": {
                "lat": 44.6028809,
                "lng": -73.17689299999999
            }
        },
        {
            "address1": "2209 June Drive",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37214",
            "coordinates": {
                "lat": 36.16848,
                "lng": -86.695241
            }
        },
        {
            "address1": "1840 Nobel Place",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40216",
            "coordinates": {
                "lat": 38.198892,
                "lng": -85.8090129
            }
        },
        {
            "address1": "2622 Martin Luther King Junior Boulevard",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72704",
            "coordinates": {
                "lat": 36.053922,
                "lng": -94.1973008
            }
        },
        {
            "address1": "4 Glen Circle",
            "address2": "",
            "city": "Glen Burnie",
            "state": "MD",
            "postalCode": "21060",
            "coordinates": {
                "lat": 39.157751,
                "lng": -76.60633399999999
            }
        },
        {
            "address1": "7529 West 72nd Avenue",
            "address2": "#4",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80003",
            "coordinates": {
                "lat": 39.8276128,
                "lng": -105.0799305
            }
        },
        {
            "address1": "10996 Largo Drive",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31419",
            "coordinates": {
                "lat": 31.99178,
                "lng": -81.14366799999999
            }
        },
        {
            "address1": "2027 North Shannon Drive",
            "address2": "#5",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.0892622,
                "lng": -94.17333020000001
            }
        },
        {
            "address1": "154 Boca Lagoon Drive",
            "address2": "",
            "city": "Panama City Beach",
            "state": "FL",
            "postalCode": "32408",
            "coordinates": {
                "lat": 30.171012,
                "lng": -85.77501099999999
            }
        },
        {
            "address1": "3311 Wiley Post Loop",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99517",
            "coordinates": {
                "lat": 61.18686499999999,
                "lng": -149.946288
            }
        },
        {
            "address1": "5055 West 58th Avenue",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80002",
            "coordinates": {
                "lat": 39.8024171,
                "lng": -105.0505121
            }
        },
        {
            "address1": "3228 Chettenham Drive",
            "address2": "",
            "city": "Rancho Cordova",
            "state": "CA",
            "postalCode": "95670",
            "coordinates": {
                "lat": 38.577813,
                "lng": -121.301333
            }
        },
        {
            "address1": "1901 North Midwest Boulevard",
            "address2": "",
            "city": "Edmond",
            "state": "OK",
            "postalCode": "73034",
            "coordinates": {
                "lat": 35.67413,
                "lng": -97.39058399999999
            }
        },
        {
            "address1": "1536 North Main Street",
            "address2": "",
            "city": "Salinas",
            "state": "CA",
            "postalCode": "93906",
            "coordinates": {
                "lat": 36.7122208,
                "lng": -121.6522485
            }
        },
        {
            "address1": "33 Linscott Road",
            "address2": "",
            "city": "Hingham",
            "state": "MA",
            "postalCode": "02043",
            "coordinates": {
                "lat": 42.2257391,
                "lng": -70.8828675
            }
        },
        {
            "address1": "1732 27th Avenue",
            "address2": "",
            "city": "Oakland",
            "state": "CA",
            "postalCode": "94601",
            "coordinates": {
                "lat": 37.783431,
                "lng": -122.228238
            }
        },
        {
            "address1": "22 Gallatin Street Northeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20011",
            "coordinates": {
                "lat": 38.9526368,
                "lng": -77.0080993
            }
        },
        {
            "address1": "8125 Glynnwood Drive",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36117",
            "coordinates": {
                "lat": 32.341844,
                "lng": -86.14093
            }
        },
        {
            "address1": "2139 Glynnwood Drive",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31404",
            "coordinates": {
                "lat": 32.021538,
                "lng": -81.06860999999999
            }
        },
        {
            "address1": "14 School Street",
            "address2": "",
            "city": "Medway",
            "state": "MA",
            "postalCode": "02053",
            "coordinates": {
                "lat": 42.141711,
                "lng": -71.395014
            }
        },
        {
            "address1": "264 Crest Drive",
            "address2": "",
            "city": "Soldotna",
            "state": "AK",
            "postalCode": "99669",
            "coordinates": {
                "lat": 60.497608,
                "lng": -151.080848
            }
        },
        {
            "address1": "307 Joel Street",
            "address2": "",
            "city": "Pooler",
            "state": "GA",
            "postalCode": "31322",
            "coordinates": {
                "lat": 32.123265,
                "lng": -81.24991
            }
        },
        {
            "address1": "188 River Road",
            "address2": "",
            "city": "Essex",
            "state": "VT",
            "postalCode": "05452",
            "coordinates": {
                "lat": 44.478846,
                "lng": -73.058294
            }
        },
        {
            "address1": "1643 Oxford Street",
            "address2": "R C",
            "city": "Berkeley",
            "state": "CA",
            "postalCode": "94709",
            "coordinates": {
                "lat": 37.877894,
                "lng": -122.266436
            }
        },
        {
            "address1": "5545 Saddlewood Lane",
            "address2": "",
            "city": "Brentwood",
            "state": "TN",
            "postalCode": "37027",
            "coordinates": {
                "lat": 36.026888,
                "lng": -86.7576629
            }
        },
        {
            "address1": "26466 Mockingbird Lane",
            "address2": "",
            "city": "Hayward",
            "state": "CA",
            "postalCode": "94544",
            "coordinates": {
                "lat": 37.6410262,
                "lng": -122.0864272
            }
        },
        {
            "address1": "4840 Reservoir Road Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20007",
            "coordinates": {
                "lat": 38.9158933,
                "lng": -77.0962873
            }
        },
        {
            "address1": "599 Cambridge Street",
            "address2": "#303",
            "city": "Cambridge",
            "state": "MA",
            "postalCode": "02141",
            "coordinates": {
                "lat": 42.3720518,
                "lng": -71.08610949999999
            }
        },
        {
            "address1": "584 Rural Hill Road",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37217",
            "coordinates": {
                "lat": 36.089291,
                "lng": -86.621854
            }
        },
        {
            "address1": "10262 West 59th Avenue",
            "address2": "#1",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80004",
            "coordinates": {
                "lat": 39.803718,
                "lng": -105.111974
            }
        },
        {
            "address1": "945 South 5th Street",
            "address2": "#1020",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40203",
            "coordinates": {
                "lat": 38.2402351,
                "lng": -85.76031119999999
            }
        },
        {
            "address1": "2543 The Meadows",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36116",
            "coordinates": {
                "lat": 32.3463001,
                "lng": -86.2185382
            }
        },
        {
            "address1": "153 Atlantic Avenue",
            "address2": "#6",
            "city": "Salisbury",
            "state": "MA",
            "postalCode": "01952",
            "coordinates": {
                "lat": 42.8339101,
                "lng": -70.81575269999999
            }
        },
        {
            "address1": "9 Brooklyn Street",
            "address2": "",
            "city": "Morristown",#added
            "state": "VT",
            "postalCode": "05488",
            "coordinates": {
                "lat": 44.924599,
                "lng": -73.12809399999999
            }
        },
        {
            "address1": "5722 8th Street Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20011",
            "coordinates": {
                "lat": 38.959305,
                "lng": -77.024463
            }
        },
        {
            "address1": "8700 Seaton Boulevard",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36116",
            "coordinates": {
                "lat": 32.3378676,
                "lng": -86.1731595
            }
        },
        {
            "address1": "1004 Bellflower Street",
            "address2": "",
            "city": "Livermore",
            "state": "CA",
            "postalCode": "94551",
            "coordinates": {
                "lat": 37.710745,
                "lng": -121.732765
            }
        },
        {
            "address1": "4738 Mallard Common",
            "address2": "",
            "city": "Fremont",
            "state": "CA",
            "postalCode": "94555",
            "coordinates": {
                "lat": 37.5666441,
                "lng": -122.0444344
            }
        },
        {
            "address1": "875 Latouche Street",
            "address2": "#APT 001010",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99501",
            "coordinates": {
                "lat": 61.2132529,
                "lng": -149.8608243
            }
        },
        {
            "address1": "4940 Fuller Road",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36110",
            "coordinates": {
                "lat": 32.42936,
                "lng": -86.21683519999999
            }
        },
        {
            "address1": "5754 Belleau Drive",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36117",
            "coordinates": {
                "lat": 32.394398,
                "lng": -86.203138
            }
        },
        {
            "address1": "1403 Lincoln Street",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31401",
            "coordinates": {
                "lat": 32.0613716,
                "lng": -81.09482249999999
            }
        },
        {
            "address1": "140 South Hill Avenue",
            "address2": "#305",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.0618737,
                "lng": -94.16920189999999
            }
        },
        {
            "address1": "642 South 2nd Street",
            "address2": "#608",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40202",
            "coordinates": {
                "lat": 38.2472593,
                "lng": -85.7549195
            }
        },
        {
            "address1": "6473 Zephyr Street",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80004",
            "coordinates": {
                "lat": 39.814341,
                "lng": -105.085116
            }
        },
        {
            "address1": "4250 North Valley Lake Drive",
            "address2": "#8",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.1279064,
                "lng": -94.12180719999999
            }
        },
        {
            "address1": "565 North Lakeshore Drive",
            "address2": "",
            "city": "Panama City Beach",
            "state": "FL",
            "postalCode": "32413",
            "coordinates": {
                "lat": 30.246868,
                "lng": -85.918511
            }
        },
        {
            "address1": "5514 West Wedington Drive",
            "address2": "#3",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72704",
            "coordinates": {
                "lat": 36.079411,
                "lng": -94.240031
            }
        },
        {
            "address1": "1909 Wainwright Avenue",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32405",
            "coordinates": {
                "lat": 30.183868,
                "lng": -85.722174
            }
        },
        {
            "address1": "4525 West Frier Drive",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85301",
            "coordinates": {
                "lat": 33.5488732,
                "lng": -112.1565998
            }
        },
        {
            "address1": "201 West Montgomery Cross Road",
            "address2": "#170",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31406",
            "coordinates": {
                "lat": 31.9996137,
                "lng": -81.13121
            }
        },
        {
            "address1": "915 Heath Drive",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36108",
            "coordinates": {
                "lat": 32.363883,
                "lng": -86.333247
            }
        },
        {
            "address1": "95 Briarwood Drive",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.745751,
                "lng": -72.542544
            }
        },
        {
            "address1": "69 Washington Street",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06042",
            "coordinates": {
                "lat": 41.78712489999999,
                "lng": -72.52083069999999
            }
        },
        {
            "address1": "2900 North Western Avenue",
            "address2": "",
            "city": "Edmond",
            "state": "OK",
            "postalCode": "73012",
            "coordinates": {
                "lat": 35.687568,
                "lng": -97.53227299999999
            }
        },
        {
            "address1": "7841 West Kristal Way",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85308",
            "coordinates": {
                "lat": 33.658804,
                "lng": -112.228834
            }
        },
        {
            "address1": "361 Parmley Lane",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37207",
            "coordinates": {
                "lat": 36.2446128,
                "lng": -86.8197718
            }
        },
        {
            "address1": "6120 Southeast 84th Street",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73135",
            "coordinates": {
                "lat": 35.380836,
                "lng": -97.41582
            }
        },
        {
            "address1": "9428 North 65th Drive",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85302",
            "coordinates": {
                "lat": 33.571222,
                "lng": -112.20045
            }
        },
        {
            "address1": "11 Meeting Place Circle",
            "address2": "",
            "city": "Boxford",
            "state": "MA",
            "postalCode": "01921",
            "coordinates": {
                "lat": 42.6946519,
                "lng": -71.0008529
            }
        },
        {
            "address1": "4438 Maine Avenue",
            "address2": "",
            "city": "Baldwin Park",
            "state": "CA",
            "postalCode": "91706",
            "coordinates": {
                "lat": 34.093409,
                "lng": -117.959953
            }
        },
        {
            "address1": "65 Jones Lane",
            "address2": "",
            "city": "Montevallo",
            "state": "AL",
            "postalCode": "35115",
            "coordinates": {
                "lat": 33.096851,
                "lng": -86.846577
            }
        },
        {
            "address1": "3140 Commander Drive",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40220",
            "coordinates": {
                "lat": 38.215781,
                "lng": -85.653981
            }
        },
        {
            "address1": "107 Guaymas Place",
            "address2": "",
            "city": "Davis",
            "state": "CA",
            "postalCode": "95616",
            "coordinates": {
                "lat": 38.567048,
                "lng": -121.746046
            }
        },
        {
            "address1": "6114 West Glenn Drive",
            "address2": "#1",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85301",
            "coordinates": {
                "lat": 33.5401454,
                "lng": -112.1912722
            }
        },
        {
            "address1": "622 Thomas Street",
            "address2": "",
            "city": "Woodland",
            "state": "CA",
            "postalCode": "95776",
            "coordinates": {
                "lat": 38.672731,
                "lng": -121.76065
            }
        },
        {
            "address1": "127 Grand Heron Drive",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32407",
            "coordinates": {
                "lat": 30.189702,
                "lng": -85.80841099999999
            }
        },
        {
            "address1": "3504 East 16th Avenue",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99508",
            "coordinates": {
                "lat": 61.2058945,
                "lng": -149.8158624
            }
        },
        {
            "address1": "1230 Stafford Drive",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36117",
            "coordinates": {
                "lat": 32.32403,
                "lng": -86.14840099999999
            }
        },
        {
            "address1": "6007 Yarrow Street",
            "address2": "H",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80004",
            "coordinates": {
                "lat": 39.806211,
                "lng": -105.084446
            }
        },
        {
            "address1": "632 Belmar Drive",
            "address2": "",
            "city": "Edmond",
            "state": "OK",
            "postalCode": "73025",
            "coordinates": {
                "lat": 35.7016024,
                "lng": -97.4912627
            }
        },
        {
            "address1": "1515 Chandlee Avenue",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32405",
            "coordinates": {
                "lat": 30.176365,
                "lng": -85.666253
            }
        },
        {
            "address1": "10632 Admiral Court",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73162",
            "coordinates": {
                "lat": 35.57886200000001,
                "lng": -97.6270728
            }
        },
        {
            "address1": "11655 West 81st Avenue",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80005",
            "coordinates": {
                "lat": 39.84356820000001,
                "lng": -105.1297584
            }
        },
        {
            "address1": "3500 Blanchard Drive Southwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20032",
            "coordinates": {
                "lat": 38.8388931,
                "lng": -77.02011139999999
            }
        },
        {
            "address1": "2755 Country Drive",
            "address2": "#244",
            "city": "Fremont",
            "state": "CA",
            "postalCode": "94536",
            "coordinates": {
                "lat": 37.557882,
                "lng": -121.986823
            }
        },
        {
            "address1": "1850 Berryhill Place",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36117",
            "coordinates": {
                "lat": 32.3527548,
                "lng": -86.16858669999999
            }
        },
        {
            "address1": "58 North U.S.A Drive",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 35.994914,
                "lng": -94.185867
            }
        },
        {
            "address1": "8785 Ellis Court",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80005",
            "coordinates": {
                "lat": 39.853725,
                "lng": -105.158861
            }
        },
        {
            "address1": "1636 Briarview Court",
            "address2": "",
            "city": "Severn",
            "state": "MD",
            "postalCode": "21144",
            "coordinates": {
                "lat": 39.12539599999999,
                "lng": -76.704015
            }
        },
        {
            "address1": "12 Knox Street",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.774166,
                "lng": -72.527697
            }
        },
        {
            "address1": "425 Middle Turnpike East",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.7847772,
                "lng": -72.50354829999999
            }
        },
        {
            "address1": "2017 North Hartford Drive",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.08820499999999,
                "lng": -94.1074905
            }
        },
        {
            "address1": "5900 Upland Road",
            "address2": "",
            "city": "Brooklyn Park",
            "state": "MD",
            "postalCode": "21225",
            "coordinates": {
                "lat": 39.213888,
                "lng": -76.61925099999999
            }
        },
        {
            "address1": "9331 Edison Road",
            "address2": "",
            "city": "Lithia",
            "state": "FL",
            "postalCode": "33547",
            "coordinates": {
                "lat": 27.86851,
                "lng": -82.07391199999999
            }
        },
        {
            "address1": "1810 Orchard Place",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99502",
            "coordinates": {
                "lat": 61.145912,
                "lng": -149.9134259
            }
        },
        {
            "address1": "145 Grau Drive",
            "address2": "",
            "city": "Fremont",
            "state": "CA",
            "postalCode": "94536",
            "coordinates": {
                "lat": 37.582453,
                "lng": -121.994476
            }
        },
        {
            "address1": "3959 Fairlands Drive",
            "address2": "",
            "city": "Pleasanton",
            "state": "CA",
            "postalCode": "94588",
            "coordinates": {
                "lat": 37.6992001,
                "lng": -121.8703701
            }
        },
        {
            "address1": "3613 East 18th Avenue",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99508",
            "coordinates": {
                "lat": 61.20485339999999,
                "lng": -149.8135521
            }
        },
        {
            "address1": "1275 South Holland Drive",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72704",
            "coordinates": {
                "lat": 36.051782,
                "lng": -94.226855
            }
        },
        {
            "address1": "109 Cambridge Station Road",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40223",
            "coordinates": {
                "lat": 38.244527,
                "lng": -85.56912799999999
            }
        },
        {
            "address1": "2107 Elfen Glen",
            "address2": "Apt B",
            "city": "Van Buren",
            "state": "AR",
            "postalCode": "72956",
            "coordinates": {
                "lat": 35.469752,
                "lng": -94.364987
            }
        },
        {
            "address1": "8522 Ingalls Circle",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80003",
            "coordinates": {
                "lat": 39.8528593,
                "lng": -105.0629778
            }
        },
        {
            "address1": "1809 Cedar Drive",
            "address2": "",
            "city": "Severn",
            "state": "MD",
            "postalCode": "21144",
            "coordinates": {
                "lat": 39.139311,
                "lng": -76.72028999999999
            }
        },
        {
            "address1": "1376 Oakland Avenue",
            "address2": "#1",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.080981,
                "lng": -94.172549
            }
        },
        {
            "address1": "4306 Bylsma Circle",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32404",
            "coordinates": {
                "lat": 30.223294,
                "lng": -85.589715
            }
        },
        {
            "address1": "233 Buckland Hills Drive",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06042",
            "coordinates": {
                "lat": 41.8100683,
                "lng": -72.5453665
            }
        },
        {
            "address1": "7701 Southwest 104th Street",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73169",
            "coordinates": {
                "lat": 35.3641983,
                "lng": -97.6475346
            }
        },
        {
            "address1": "14003 Crossbranch Court",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40245",
            "coordinates": {
                "lat": 38.242033,
                "lng": -85.489885
            }
        },
        {
            "address1": "19590 East Batavia Drive",
            "address2": "",
            "city": "Aurora",
            "state": "CO",
            "postalCode": "80011",
            "coordinates": {
                "lat": 39.7420886,
                "lng": -104.7581149
            }
        },
        {
            "address1": "6424 Simms Street",
            "address2": "#71",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80004",
            "coordinates": {
                "lat": 39.8133443,
                "lng": -105.1283237
            }
        },
        {
            "address1": "718 Dutchmans Court",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37076",
            "coordinates": {
                "lat": 36.2048851,
                "lng": -86.5994752
            }
        },
        {
            "address1": "8496 Isles Court",
            "address2": "",
            "city": "Pasadena",
            "state": "MD",
            "postalCode": "21122",
            "coordinates": {
                "lat": 39.111297,
                "lng": -76.467049
            }
        },
        {
            "address1": "100 East Joyce Boulevard",
            "address2": "#110",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.1253411,
                "lng": -94.1551631
            }
        },
        {
            "address1": "9036 Calico Court",
            "address2": "",
            "city": "Hesperia",
            "state": "CA",
            "postalCode": "92344",
            "coordinates": {
                "lat": 34.414491,
                "lng": -117.375403
            }
        },
        {
            "address1": "2723 East Joyce Boulevard",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.119414,
                "lng": -94.12229500000001
            }
        },
        {
            "address1": "90 Via Verde",
            "address2": "",
            "city": "San Lorenzo",
            "state": "CA",
            "postalCode": "94580",
            "coordinates": {
                "lat": 37.67869,
                "lng": -122.117142
            }
        },
        {
            "address1": "1015 Castle Road",
            "address2": "",
            "city": "Edmond",
            "state": "OK",
            "postalCode": "73034",
            "coordinates": {
                "lat": 35.665019,
                "lng": -97.466045
            }
        },
        {
            "address1": "2787 West Blackstone Crossing",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72704",
            "coordinates": {
                "lat": 36.0608984,
                "lng": -94.1993461
            }
        },
        {
            "address1": "3555 Alamosa Drive",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99502",
            "coordinates": {
                "lat": 61.142316,
                "lng": -149.9454749
            }
        },
        {
            "address1": "6231 North 59th Avenue",
            "address2": "#35",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85301",
            "coordinates": {
                "lat": 33.5285304,
                "lng": -112.1860744
            }
        },
        {
            "address1": "311 South Panama Street",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36107",
            "coordinates": {
                "lat": 32.376833,
                "lng": -86.27416099999999
            }
        },
        {
            "address1": "3313 Daisy Trail",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37013",
            "coordinates": {
                "lat": 36.076186,
                "lng": -86.60113799999999
            }
        },
        {
            "address1": "5436 Dorbrandt Street",
            "address2": "#APT 000002",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99518",
            "coordinates": {
                "lat": 61.17090200000001,
                "lng": -149.904782
            }
        },
        {
            "address1": "553 South Arlington Road",
            "address2": "",
            "city": "Orange",
            "state": "CA",
            "postalCode": "92869",
            "coordinates": {
                "lat": 33.7794839,
                "lng": -117.820383
            }
        },
        {
            "address1": "615 Q Street Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20001",
            "coordinates": {
                "lat": 38.9113118,
                "lng": -77.0206808
            }
        },
        {
            "address1": "457 Mountain Village Boulevard",
            "address2": "#320-3",
            "city": "Mountain Village",
            "state": "CO",
            "postalCode": "81435",
            "coordinates": {
                "lat": 37.93323040000001,
                "lng": -107.8515732
            }
        },
        {
            "address1": "144 Lauderdale Street",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36116",
            "coordinates": {
                "lat": 32.309978,
                "lng": -86.259716
            }
        },
        {
            "address1": "2 Ambelwood Way",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31411",
            "coordinates": {
                "lat": 31.9138389,
                "lng": -81.07297989999999
            }
        },
        {
            "address1": "4113 Holiday Drive",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32408",
            "coordinates": {
                "lat": 30.1548681,
                "lng": -85.7709976
            }
        },
        {
            "address1": "2001 Van Hoose Drive",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.039421,
                "lng": -94.065534
            }
        },
        {
            "address1": "9457 Winfield Place",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36117",
            "coordinates": {
                "lat": 32.341347,
                "lng": -86.14867799999999
            }
        },
        {
            "address1": "1120 Mitchell Young Road",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36108",
            "coordinates": {
                "lat": 32.327464,
                "lng": -86.44011599999999
            }
        },
        {
            "address1": "12816 West 65th Way",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80004",
            "coordinates": {
                "lat": 39.8141779,
                "lng": -105.1426275
            }
        },
        {
            "address1": "10 Erick Road",
            "address2": "#47",
            "city": "Mansfield",
            "state": "MA",
            "postalCode": "02048",
            "coordinates": {
                "lat": 42.032505,
                "lng": -71.17718599999999
            }
        },
        {
            "address1": "481 East Redbud Lane",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.103899,
                "lng": -94.151128
            }
        },
        {
            "address1": "320 Northwest 22nd Street",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73103",
            "coordinates": {
                "lat": 35.491908,
                "lng": -97.51843099999999
            }
        },
        {
            "address1": "33 South Hill Avenue",
            "address2": "#306",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.0619602,
                "lng": -94.16977700000001
            }
        },
        {
            "address1": "355 Gillette Road",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37211",
            "coordinates": {
                "lat": 36.061143,
                "lng": -86.70823299999999
            }
        },
        {
            "address1": "151 Main Street",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31408",
            "coordinates": {
                "lat": 32.113199,
                "lng": -81.148934
            }
        },
        {
            "address1": "545 Tracey Drive",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32404",
            "coordinates": {
                "lat": 30.1354251,
                "lng": -85.5573034
            }
        },
        {
            "address1": "3 Southerberry Drive",
            "address2": "",
            "state": "VT",
            "postalCode": "05468",
            "coordinates": {
                "lat": 44.62322460000001,
                "lng": -73.1326629
            }
        },
        {
            "address1": "736 Sicard Street Southeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20003",
            "coordinates": {
                "lat": 38.8729038,
                "lng": -76.9949528
            }
        },
        {
            "address1": "6214 Herzog Street",
            "address2": "",
            "city": "Oakland",
            "state": "CA",
            "postalCode": "94608",
            "coordinates": {
                "lat": 37.84557849999999,
                "lng": -122.2825201
            }
        },
        {
            "address1": "1160 North College Avenue",
            "address2": "#2",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.0785477,
                "lng": -94.1566273
            }
        },
        {
            "address1": "5843 West McLellan Road",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85301",
            "coordinates": {
                "lat": 33.5330898,
                "lng": -112.1857087
            }
        },
        {
            "address1": "1452 55th Avenue",
            "address2": "B",
            "city": "Oakland",
            "state": "CA",
            "postalCode": "94621",
            "coordinates": {
                "lat": 37.767671,
                "lng": -122.202326
            }
        },
        {
            "address1": "4255 Tanager Common",
            "address2": "",
            "city": "Fremont",
            "state": "CA",
            "postalCode": "94555",
            "coordinates": {
                "lat": 37.5738888,
                "lng": -122.0460256
            }
        },
        {
            "address1": "13426 West Rovey Avenue",
            "address2": "",
            "city": "Litchfield Park",
            "state": "AZ",
            "postalCode": "85340",
            "coordinates": {
                "lat": 33.522973,
                "lng": -112.34802
            }
        },
        {
            "address1": "195 Nursery Street",
            "address2": "#D10",
            "city": "Springfield",
            "state": "MA",
            "postalCode": "01104",
            "coordinates": {
                "lat": 42.1178409,
                "lng": -72.5892289
            }
        },
        {
            "address1": "126 Marjorie Lane",
            "address2": "C",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06042",
            "coordinates": {
                "lat": 41.8073257,
                "lng": -72.5188292
            }
        },
        {
            "address1": "22 Charnock Street",
            "address2": "#2",
            "city": "Beverly",
            "state": "MA",
            "postalCode": "01915",
            "coordinates": {
                "lat": 42.55227,
                "lng": -70.876549
            }
        },
        {
            "address1": "817 25th Street Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20037",
            "coordinates": {
                "lat": 38.900077,
                "lng": -77.053066
            }
        },
        {
            "address1": "2552 Massachusetts Avenue Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20008",
            "coordinates": {
                "lat": 38.9165459,
                "lng": -77.057323
            }
        },
        {
            "address1": "1711 Lore Road",
            "address2": "#APT 000106",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99507",
            "coordinates": {
                "lat": 61.15195259999999,
                "lng": -149.8511487
            }
        },
        {
            "address1": "19091 Northeast 23rd Street",
            "address2": "",
            "city": "Harrah",
            "state": "OK",
            "postalCode": "73045",
            "coordinates": {
                "lat": 35.493447,
                "lng": -97.193078
            }
        },
        {
            "address1": "8318 North 57th Drive",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85302",
            "coordinates": {
                "lat": 33.557537,
                "lng": -112.183238
            }
        },
        {
            "address1": "7256 West 84th Way",
            "address2": "#918",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80003",
            "coordinates": {
                "lat": 39.8506912,
                "lng": -105.0767393
            }
        },
        {
            "address1": "706 Seagrove Road",
            "address2": "",
            "city": "Glen Burnie",
            "state": "MD",
            "postalCode": "21060",
            "coordinates": {
                "lat": 39.163384,
                "lng": -76.609205
            }
        },
        {
            "address1": "2318 Camryns Crossing",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32405",
            "coordinates": {
                "lat": 30.221926,
                "lng": -85.62420000000002
            }
        },
        {
            "address1": "968 Virginia Avenue",
            "address2": "",
            "city": "Olivehurst",
            "state": "CA",
            "postalCode": "95961",
            "coordinates": {
                "lat": 39.1022419,
                "lng": -121.581218
            }
        },
        {
            "address1": "416 South University Boulevard",
            "address2": "",
            "city": "Norman",
            "state": "OK",
            "postalCode": "73069",
            "coordinates": {
                "lat": 35.215351,
                "lng": -97.446319
            }
        },
        {
            "address1": "137 Gazebo East Drive",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36117",
            "coordinates": {
                "lat": 32.3793507,
                "lng": -86.20407399999999
            }
        },
        {
            "address1": "10723 Colonial Woods Court",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40223",
            "coordinates": {
                "lat": 38.2496439,
                "lng": -85.55717709999999
            }
        },
        {
            "address1": "119 Matthew Lane",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37215",
            "coordinates": {
                "lat": 36.11663619999999,
                "lng": -86.80955829999999
            }
        },
        {
            "address1": "3142 West Finger Road",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.042837,
                "lng": -94.205309
            }
        },
        {
            "address1": "4 Elm Street",
            "address2": "",
            "city": "Windsor",
            "state": "VT",
            "postalCode": "05089",
            "coordinates": {
                "lat": 43.476997,
                "lng": -72.398925
            }
        },
        {
            "address1": "78 School Street",
            "address2": "",
            "city": "Woburn",
            "state": "MA",
            "postalCode": "01801",
            "coordinates": {
                "lat": 42.506877,
                "lng": -71.15299
            }
        },
        {
            "address1": "19020 North 68th Avenue",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85308",
            "coordinates": {
                "lat": 33.6574037,
                "lng": -112.2062039
            }
        },
        {
            "address1": "2849 Quail Drive",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72704",
            "coordinates": {
                "lat": 36.095294,
                "lng": -94.20036300000001
            }
        },
        {
            "address1": "2456 22nd Avenue",
            "address2": "",
            "city": "Greeley",
            "state": "CO",
            "postalCode": "80631",
            "coordinates": {
                "lat": 40.397153,
                "lng": -104.713982
            }
        },
        {
            "address1": "200 Boulder Road",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.7792079,
                "lng": -72.494963
            }
        },
        {
            "address1": "11150 Sun Valley Drive",
            "address2": "",
            "city": "Oakland",
            "state": "CA",
            "postalCode": "94605",
            "coordinates": {
                "lat": 37.752039,
                "lng": -122.11822
            }
        },
        {
            "address1": "505 Southeast 32nd Street",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73129",
            "coordinates": {
                "lat": 35.4325058,
                "lng": -97.5032743
            }
        },
        {
            "address1": "1025 West 19th Street",
            "address2": "#UNIT 1-C",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32405",
            "coordinates": {
                "lat": 30.18252889999999,
                "lng": -85.676771
            }
        },
        {
            "address1": "6725 Pamela Court",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36116",
            "coordinates": {
                "lat": 32.334546,
                "lng": -86.20349999999999
            }
        },
        {
            "address1": "4714 Narrow Lane Road",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36116",
            "coordinates": {
                "lat": 32.3140725,
                "lng": -86.2819674
            }
        },
        {
            "address1": "11 Proctor Circle",
            "address2": "",
            "city": "Peabody",
            "state": "MA",
            "postalCode": "01960",
            "coordinates": {
                "lat": 42.535503,
                "lng": -70.953384
            }
        },
        {
            "address1": "10508 Kovats Court",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40223",
            "coordinates": {
                "lat": 38.2330381,
                "lng": -85.5695464
            }
        },
        {
            "address1": "3179 18th Street Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20010",
            "coordinates": {
                "lat": 38.9312712,
                "lng": -77.0412983
            }
        },
        {
            "address1": "3194 Bladensburg Road Northeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20018",
            "coordinates": {
                "lat": 38.930136,
                "lng": -76.95929799999999
            }
        },
        {
            "address1": "260 Rio Del Mar Boulevard",
            "address2": "##14",
            "city": "Aptos",
            "state": "CA",
            "postalCode": "95003",
            "coordinates": {
                "lat": 36.967915,
                "lng": -121.902513
            }
        },
        {
            "address1": "1040 West 27th Avenue",
            "address2": "#APT 000401",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99503",
            "coordinates": {
                "lat": 61.195892,
                "lng": -149.901984
            }
        },
        {
            "address1": "42 Lake Lane",
            "address2": "",
            "city": "Westmore",
            "state": "VT",
            "postalCode": "05860",
            "coordinates": {
                "lat": 44.77954099999999,
                "lng": -72.0682889
            }
        },
        {
            "address1": "3718 Bay Tree Road",
            "address2": "",
            "city": "Lynn Haven",
            "state": "FL",
            "postalCode": "32444",
            "coordinates": {
                "lat": 30.205726,
                "lng": -85.63441999999999
            }
        },
        {
            "address1": "3408 Bellisima Place",
            "address2": "#204",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40245",
            "coordinates": {
                "lat": 38.2857023,
                "lng": -85.5023064
            }
        },
        {
            "address1": "4109 General Bate Drive",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37204",
            "coordinates": {
                "lat": 36.099427,
                "lng": -86.787756
            }
        },
        {
            "address1": "5329 A Street",
            "address2": "",
            "city": "Greeley",
            "state": "CO",
            "postalCode": "80634",
            "coordinates": {
                "lat": 40.4347001,
                "lng": -104.7702805
            }
        },
        {
            "address1": "88 Shute Street",
            "address2": "#1",
            "city": "Everett",
            "state": "MA",
            "postalCode": "02149",
            "coordinates": {
                "lat": 42.4192568,
                "lng": -71.0469179
            }
        },
        {
            "address1": "480 Keene Road",
            "address2": "",
            "city": "Walden",
            "state": "VT",
            "postalCode": "05836",
            "coordinates": {
                "lat": 44.4879516,
                "lng": -72.2823264
            }
        },
        {
            "address1": "4 Cutting Avenue",
            "address2": "",
            "city": "Worcester",
            "state": "MA",
            "postalCode": "01606",
            "coordinates": {
                "lat": 42.307664,
                "lng": -71.79180099999999
            }
        },
        {
            "address1": "275 South 40th Street",
            "address2": "",
            "city": "Boulder",
            "state": "CO",
            "postalCode": "80305",
            "coordinates": {
                "lat": 39.988864,
                "lng": -105.247011
            }
        },
        {
            "address1": "1189 Northwest End Avenue",
            "address2": "#D3",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.0793885,
                "lng": -94.19657190000001
            }
        },
        {
            "address1": "25 Cliffside Drive",
            "address2": "D",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06042",
            "coordinates": {
                "lat": 41.79505229999999,
                "lng": -72.48762169999999
            }
        },
        {
            "address1": "2515 60th Avenue",
            "address2": "",
            "city": "Oakland",
            "state": "CA",
            "postalCode": "94605",
            "coordinates": {
                "lat": 37.7705346,
                "lng": -122.1907449
            }
        },
        {
            "address1": "2057 Lucas Street",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36107",
            "coordinates": {
                "lat": 32.3934472,
                "lng": -86.2766814
            }
        },
        {
            "address1": "386 Daniels Road",
            "address2": "",
            "city": "New Haven",
            "state": "VT",
            "postalCode": "05472",
            "coordinates": {
                "lat": 44.114323,
                "lng": -73.1911159
            }
        },
        {
            "address1": "9805 Meadow Vale Drive",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40242",
            "coordinates": {
                "lat": 38.281955,
                "lng": -85.57182100000001
            }
        },
        {
            "address1": "8 Village Circle",
            "address2": "",
            "city": "Randolph",
            "state": "VT",
            "postalCode": "05060",
            "coordinates": {
                "lat": 43.927687,
                "lng": -72.65563
            }
        },
        {
            "address1": "1011 San Jose Street",
            "address2": "",
            "city": "San Leandro",
            "state": "CA",
            "postalCode": "94577",
            "coordinates": {
                "lat": 37.72956300000001,
                "lng": -122.147074
            }
        },
        {
            "address1": "2505 Walker Lane",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37207",
            "coordinates": {
                "lat": 36.2125119,
                "lng": -86.806625
            }
        },
        {
            "address1": "11225 West 79th Drive",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80005",
            "coordinates": {
                "lat": 39.840784,
                "lng": -105.124533
            }
        },
        {
            "address1": "1907 18th Avenue South",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37212",
            "coordinates": {
                "lat": 36.134703,
                "lng": -86.79737700000001
            }
        },
        {
            "address1": "16 Conway Street",
            "address2": "",
            "city": "Shelburne Falls",
            "state": "MA",
            "postalCode": "01370",
            "coordinates": {
                "lat": 42.6022637,
                "lng": -72.74100059999999
            }
        },
        {
            "address1": "20375 Wisteria Street",
            "address2": "",
            "city": "Castro Valley",
            "state": "CA",
            "postalCode": "94546",
            "coordinates": {
                "lat": 37.696683,
                "lng": -122.085865
            }
        },
        {
            "address1": "6408 Fern Crest Road",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40291",
            "coordinates": {
                "lat": 38.154488,
                "lng": -85.612144
            }
        },
        {
            "address1": "175 Creek Road",
            "address2": "",
            "city": "Castleton",
            "state": "VT",
            "postalCode": "05735",
            "coordinates": {
                "lat": 43.6055996,
                "lng": -73.2336737
            }
        },
        {
            "address1": "2531 Prestwick Avenue",
            "address2": "",
            "city": "Concord",
            "state": "CA",
            "postalCode": "94519",
            "coordinates": {
                "lat": 37.9966039,
                "lng": -122.0280747
            }
        },
        {
            "address1": "1002 Highland Avenue",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40204",
            "coordinates": {
                "lat": 38.2371577,
                "lng": -85.7367362
            }
        },
        {
            "address1": "2927 Leatherwood Drive",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37214",
            "coordinates": {
                "lat": 36.156413,
                "lng": -86.65534099999999
            }
        },
        {
            "address1": "8467 Chase Drive",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80003",
            "coordinates": {
                "lat": 39.851766,
                "lng": -105.071498
            }
        },
        {
            "address1": "8556 Nelson Court",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80005",
            "coordinates": {
                "lat": 39.850965,
                "lng": -105.117879
            }
        },
        {
            "address1": "122 Summer Street",
            "address2": "#1",
            "city": "Medford",
            "state": "MA",
            "postalCode": "02155",
            "coordinates": {
                "lat": 42.415648,
                "lng": -71.116886
            }
        },
        {
            "address1": "12061 Johns Road",
            "address2": "#APT 000002",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99515",
            "coordinates": {
                "lat": 61.111453,
                "lng": -149.8780899
            }
        },
        {
            "address1": "8358 WB&A Road",
            "address2": "",
            "city": "Severn",
            "state": "MD",
            "postalCode": "21144",
            "coordinates": {
                "lat": 39.108962,
                "lng": -76.68668799999999
            }
        },
        {
            "address1": "43 Henderson Avenue",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31406",
            "coordinates": {
                "lat": 31.97937899999999,
                "lng": -81.06062
            }
        },
        {
            "address1": "347 Brewer Drive",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37211",
            "coordinates": {
                "lat": 36.054592,
                "lng": -86.708157
            }
        },
        {
            "address1": "2765 North Barcelona Avenue",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.102026,
                "lng": -94.15365
            }
        },
        {
            "address1": "5311 Chenoweth Park Lane",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40291",
            "coordinates": {
                "lat": 38.168051,
                "lng": -85.571491
            }
        },
        {
            "address1": "6398 Jellison Way",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80004",
            "coordinates": {
                "lat": 39.8118489,
                "lng": -105.1121974
            }
        },
        {
            "address1": "604 Northwest 118th Street",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73114",
            "coordinates": {
                "lat": 35.5902559,
                "lng": -97.523444
            }
        },
        {
            "address1": "37 Rushforde Drive",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.738226,
                "lng": -72.538398
            }
        },
        {
            "address1": "5434 West Beck Lane",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85306",
            "coordinates": {
                "lat": 33.6266139,
                "lng": -112.176412
            }
        },
        {
            "address1": "1516 Ringe Drive",
            "address2": "",
            "city": "Severn",
            "state": "MD",
            "postalCode": "21144",
            "coordinates": {
                "lat": 39.094173,
                "lng": -76.68423299999999
            }
        },
        {
            "address1": "3701 Lake Towne Drive",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37013",
            "coordinates": {
                "lat": 36.068871,
                "lng": -86.612042
            }
        },
        {
            "address1": "20250 North 67th Avenue",
            "address2": "#2143",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85308",
            "coordinates": {
                "lat": 33.6705359,
                "lng": -112.2044722
            }
        },
        {
            "address1": "62 Prospect Avenue",
            "address2": "#1",
            "city": "Quincy",
            "state": "MA",
            "postalCode": "02170",
            "coordinates": {
                "lat": 42.261576,
                "lng": -71.020522
            }
        },
        {
            "address1": "25 Morton Street",
            "address2": "#216",
            "city": "Quincy",
            "state": "MA",
            "postalCode": "02169",
            "coordinates": {
                "lat": 42.24450900000001,
                "lng": -71.021176
            }
        },
        {
            "address1": "8202 4 Winds Drive",
            "address2": "#3",
            "city": "Lyndon",
            "state": "KY",
            "postalCode": "40222",
            "coordinates": {
                "lat": 38.26545309999999,
                "lng": -85.60216830000002
            }
        },
        {
            "address1": "513 Habberton Road",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.107299,
                "lng": -94.053033
            }
        },
        {
            "address1": "1960 Sigfrid Court",
            "address2": "",
            "city": "Annapolis",
            "state": "MD",
            "postalCode": "21401",
            "coordinates": {
                "lat": 38.998796,
                "lng": -76.564554
            }
        },
        {
            "address1": "663 Chesapeake Way",
            "address2": "#1",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.0498647,
                "lng": -94.1504411
            }
        },
        {
            "address1": "3354 Wilmington Road",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36105",
            "coordinates": {
                "lat": 32.345724,
                "lng": -86.301384
            }
        },
        {
            "address1": "8529 Old Harding Lane",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37221",
            "coordinates": {
                "lat": 36.027995,
                "lng": -87.014506
            }
        },
        {
            "address1": "22219 Panama City Beach Parkway",
            "address2": "",
            "city": "Panama City Beach",
            "state": "FL",
            "postalCode": "32413",
            "coordinates": {
                "lat": 30.2620426,
                "lng": -85.96316709999999
            }
        },
        {
            "address1": "37 East Broad Street",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31401",
            "coordinates": {
                "lat": 32.0776278,
                "lng": -81.08469219999999
            }
        },
        {
            "address1": "1309 Columbia Road Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20009",
            "coordinates": {
                "lat": 38.9275945,
                "lng": -77.0307141
            }
        },
        {
            "address1": "1211 Castine Court",
            "address2": "",
            "city": "Pasadena",
            "state": "MD",
            "postalCode": "21122",
            "coordinates": {
                "lat": 39.1404092,
                "lng": -76.5313772
            }
        },
        {
            "address1": "906 West Berry Street",
            "address2": "#204",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.0760793,
                "lng": -94.1723526
            }
        },
        {
            "address1": "341 Oakland Street",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06042",
            "coordinates": {
                "lat": 41.805274,
                "lng": -72.5180772
            }
        },
        {
            "address1": "60 Downey Drive",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.7786337,
                "lng": -72.5757232
            }
        },
        {
            "address1": "3770 North Front Street",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.1183319,
                "lng": -94.1443548
            }
        },
        {
            "address1": "25 Church Street",
            "address2": "A",
            "city": "Pittsfield",
            "state": "MA",
            "postalCode": "01201",
            "coordinates": {
                "lat": 42.446859,
                "lng": -73.255836
            }
        },
        {
            "address1": "6578 Marauder Drive",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37209",
            "coordinates": {
                "lat": 36.142929,
                "lng": -86.885521
            }
        },
        {
            "address1": "2747 68th Avenue",
            "address2": "",
            "city": "Oakland",
            "state": "CA",
            "postalCode": "94605",
            "coordinates": {
                "lat": 37.768532,
                "lng": -122.180694
            }
        },
        {
            "address1": "95 Woods Hill Road",
            "address2": "",
            "city": "Swanton",#added
            "state": "VT",
            "postalCode": "05488",
            "coordinates": {
                "lat": 44.897682,
                "lng": -73.0753299
            }
        },
        {
            "address1": "35 Keach Avenue",
            "address2": "",
            "city": "Worcester",
            "state": "MA",
            "postalCode": "01607",
            "coordinates": {
                "lat": 42.2269409,
                "lng": -71.801441
            }
        },
        {
            "address1": "1822 North Grand Avenue",
            "address2": "",
            "city": "Pueblo",
            "state": "CO",
            "postalCode": "81003",
            "coordinates": {
                "lat": 38.284427,
                "lng": -104.611581
            }
        },
        {
            "address1": "1809 U.S. 80",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31408",
            "coordinates": {
                "lat": 32.0847824,
                "lng": -81.16739679999999
            }
        },
        {
            "address1": "5065 North 54th Avenue",
            "address2": "#8",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85301",
            "coordinates": {
                "lat": 33.5118429,
                "lng": -112.1748805
            }
        },
        {
            "address1": "1261 Steamboat Drive",
            "address2": "#3",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72704",
            "coordinates": {
                "lat": 36.0804859,
                "lng": -94.2049698
            }
        },
        {
            "address1": "1695 Archer Street",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31405",
            "coordinates": {
                "lat": 32.0475974,
                "lng": -81.13348289999999
            }
        },
        {
            "address1": "3904 October Woods Drive",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37013",
            "coordinates": {
                "lat": 36.009291,
                "lng": -86.624016
            }
        },
        {
            "address1": "1223 Delaware Avenue",
            "address2": "",
            "city": "Deale",
            "state": "MD",
            "postalCode": "20733",
            "coordinates": {
                "lat": 38.799962,
                "lng": -76.51803699999999
            }
        },
        {
            "address1": "10383 Eagle River Lane",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99577",
            "coordinates": {
                "lat": 61.31412899999999,
                "lng": -149.509103
            }
        },
        {
            "address1": "1314 89th Avenue",
            "address2": "",
            "city": "Oakland",
            "state": "CA",
            "postalCode": "94621",
            "coordinates": {
                "lat": 37.7497401,
                "lng": -122.1762833
            }
        },
        {
            "address1": "21 Longview Bluff Drive East",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31419",
            "coordinates": {
                "lat": 31.95754299999999,
                "lng": -81.13848899999999
            }
        },
        {
            "address1": "1689 Fisher Pond Road",
            "address2": "",
            "city": "Saint Albans City",
            "state": "VT",
            "postalCode": "05478",
            "coordinates": {
                "lat": 44.826977,
                "lng": -73.055054
            }
        },
        {
            "address1": "9920 West 81st Avenue",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80005",
            "coordinates": {
                "lat": 39.8446204,
                "lng": -105.1083834
            }
        },
        {
            "address1": "2732 Rosedale Place",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37211",
            "coordinates": {
                "lat": 36.1230861,
                "lng": -86.7625204
            }
        },
        {
            "address1": "10881 Northforde Drive",
            "address2": "",
            "city": "Cupertino",
            "state": "CA",
            "postalCode": "95014",
            "coordinates": {
                "lat": 37.335812,
                "lng": -122.023985
            }
        },
        {
            "address1": "926 Mill Court",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31419",
            "coordinates": {
                "lat": 31.959343,
                "lng": -81.142287
            }
        },
        {
            "address1": "7550 Kline Drive",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80005",
            "coordinates": {
                "lat": 39.8342031,
                "lng": -105.1106565
            }
        },
        {
            "address1": "5688 Johnson Court",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80002",
            "coordinates": {
                "lat": 39.798419,
                "lng": -105.109316
            }
        },
        {
            "address1": "4439 Gale Street",
            "address2": "",
            "city": "Livermore",
            "state": "CA",
            "postalCode": "94550",
            "coordinates": {
                "lat": 37.690199,
                "lng": -121.7411119
            }
        },
        {
            "address1": "6450 West Bethany Home Road",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85301",
            "coordinates": {
                "lat": 33.5242005,
                "lng": -112.1991369
            }
        },
        {
            "address1": "2931 Shady Oaks Drive",
            "address2": "",
            "city": "Evans",
            "state": "CO",
            "postalCode": "80620",
            "coordinates": {
                "lat": 40.384469,
                "lng": -104.726478
            }
        },
        {
            "address1": "6451 West Bell Road",
            "address2": "#1144",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85308",
            "coordinates": {
                "lat": 33.6380231,
                "lng": -112.1986753
            }
        },
        {
            "address1": "644 West Maple Street",
            "address2": "#2",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.0703335,
                "lng": -94.1686289
            }
        },
        {
            "address1": "1219 North Storer Avenue",
            "address2": "#66",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.078949,
                "lng": -94.17225499999999
            }
        },
        {
            "address1": "152 Holly Court",
            "address2": "",
            "city": "Mountain View",
            "state": "CA",
            "postalCode": "94043",
            "coordinates": {
                "lat": 37.390391,
                "lng": -122.060062
            }
        },
        {
            "address1": "6086 Kennedy Drive",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72704",
            "coordinates": {
                "lat": 36.103629,
                "lng": -94.24773599999999
            }
        },
        {
            "address1": "2300 Deer Path Circle",
            "address2": "#207",
            "city": "Hurstbourne Acres",
            "state": "KY",
            "postalCode": "40220",
            "coordinates": {
                "lat": 38.2187876,
                "lng": -85.59292239999999
            }
        },
        {
            "address1": "802 East 37th Street",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31401",
            "coordinates": {
                "lat": 32.054012,
                "lng": -81.087324
            }
        },
        {
            "address1": "5821 Taft Street",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80004",
            "coordinates": {
                "lat": 39.8029119,
                "lng": -105.1308558
            }
        },
        {
            "address1": "188 Saint Matthews Avenue",
            "address2": "#1",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40207",
            "coordinates": {
                "lat": 38.2577576,
                "lng": -85.6546706
            }
        },
        {
            "address1": "68 Hampstead Place",
            "address2": "",
            "city": "Athol",
            "state": "MA",
            "postalCode": "01331",
            "coordinates": {
                "lat": 42.5894395,
                "lng": -72.2275859
            }
        },
        {
            "address1": "3164 West Woodfield Way",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72704",
            "coordinates": {
                "lat": 36.084691,
                "lng": -94.20445
            }
        },
        {
            "address1": "7998 Chase Circle",
            "address2": "#1",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80003",
            "coordinates": {
                "lat": 39.841232,
                "lng": -105.057933
            }
        },
        {
            "address1": "1797 Pasatiempo Drive",
            "address2": "",
            "city": "Chico",
            "state": "CA",
            "postalCode": "95928",
            "coordinates": {
                "lat": 39.6777229,
                "lng": -121.7704692
            }
        },
        {
            "address1": "3722 Kisling Loop",
            "address2": "",
            "city": "Tyndall Air Force Base",
            "state": "FL",
            "postalCode": "32403",
            "coordinates": {
                "lat": 30.1048481,
                "lng": -85.65097360000001
            }
        },
        {
            "address1": "429 Patterson Street",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37211",
            "coordinates": {
                "lat": 36.102655,
                "lng": -86.744186
            }
        },
        {
            "address1": "6140 Fenton Street",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80003",
            "coordinates": {
                "lat": 39.8080314,
                "lng": -105.0601435
            }
        },
        {
            "address1": "7404 West Crest Lane",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85310",
            "coordinates": {
                "lat": 33.6851098,
                "lng": -112.2167229
            }
        },
        {
            "address1": "7841 North 59th Lane",
            "address2": "#G37",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85301",
            "coordinates": {
                "lat": 33.5516587,
                "lng": -112.1879207
            }
        },
        {
            "address1": "8043 Cranberry Street",
            "address2": "#APT 000001",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99502",
            "coordinates": {
                "lat": 61.14769579999999,
                "lng": -149.9369466
            }
        },
        {
            "address1": "173 Spruce Street",
            "address2": "#18",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.7705332,
                "lng": -72.51594109999999
            }
        },
        {
            "address1": "4712 Cherokee Heights Road",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32404",
            "coordinates": {
                "lat": 30.234223,
                "lng": -85.566684
            }
        },
        {
            "address1": "915 Sacramento Street",
            "address2": "",
            "city": "Bakersfield",
            "state": "CA",
            "postalCode": "93305",
            "coordinates": {
                "lat": 35.3798759,
                "lng": -119.0002119
            }
        },
        {
            "address1": "317 Windsor Road",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31419",
            "coordinates": {
                "lat": 31.973034,
                "lng": -81.141871
            }
        },
        {
            "address1": "1332 Maple Street",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36108",
            "coordinates": {
                "lat": 32.3589738,
                "lng": -86.3278235
            }
        },
        {
            "address1": "4709 Blagden Terrace Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20011",
            "coordinates": {
                "lat": 38.9481213,
                "lng": -77.0401892
            }
        },
        {
            "address1": "5102 Ander Drive",
            "address2": "",
            "city": "Brentwood",
            "state": "TN",
            "postalCode": "37027",
            "coordinates": {
                "lat": 36.0025004,
                "lng": -86.6944901
            }
        },
        {
            "address1": "6754 Field Street",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80004",
            "coordinates": {
                "lat": 39.8193709,
                "lng": -105.097531
            }
        },
        {
            "address1": "2347 Glen Eagle Drive",
            "address2": "",
            "city": "Northfield",
            "state": "KY",
            "postalCode": "40222",
            "coordinates": {
                "lat": 38.2862836,
                "lng": -85.6299745
            }
        },
        {
            "address1": "1613 Maple Timber Court",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37013",
            "coordinates": {
                "lat": 36.067096,
                "lng": -86.607005
            }
        },
        {
            "address1": "269 Park Street",
            "address2": "#1",
            "city": "North Reading",
            "state": "MA",
            "postalCode": "01864",
            "coordinates": {
                "lat": 42.57268,
                "lng": -71.09888800000002
            }
        },
        {
            "address1": "6444 North 67th Avenue",
            "address2": "#1081",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85301",
            "coordinates": {
                "lat": 33.5302444,
                "lng": -112.2049579
            }
        },
        {
            "address1": "11 Pine Point Road",
            "address2": "",
            "city": "Duxbury",
            "state": "MA",
            "postalCode": "02332",
            "coordinates": {
                "lat": 42.0613192,
                "lng": -70.6510247
            }
        },
        {
            "address1": "4136 East Virginia Lane",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36116",
            "coordinates": {
                "lat": 32.295998,
                "lng": -86.22073999999999
            }
        },
        {
            "address1": "5740 North 59th Avenue",
            "address2": "#1156",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85301",
            "coordinates": {
                "lat": 33.5207722,
                "lng": -112.189044
            }
        },
        {
            "address1": "95 Central Street",
            "address2": "A",
            "city": "Springfield",
            "state": "MA",
            "postalCode": "01105",
            "coordinates": {
                "lat": 42.098581,
                "lng": -72.57880999999999
            }
        },
        {
            "address1": "74 Heard Street",
            "address2": "#1",
            "city": "Chelsea",
            "state": "MA",
            "postalCode": "02150",
            "coordinates": {
                "lat": 42.3972985,
                "lng": -71.035599
            }
        },
        {
            "address1": "2500 Snowdoun Chambers Road",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36105",
            "coordinates": {
                "lat": 32.24569110000001,
                "lng": -86.2577436
            }
        },
        {
            "address1": "429 Dennison Ridge Drive",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.750419,
                "lng": -72.474013
            }
        },
        {
            "address1": "1208 Lindenwood Drive",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32405",
            "coordinates": {
                "lat": 30.187016,
                "lng": -85.681247
            }
        },
        {
            "address1": "7609 Doris Place",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73162",
            "coordinates": {
                "lat": 35.5759649,
                "lng": -97.64877299999999
            }
        },
        {
            "address1": "1915 Southeast 29th Street",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73129",
            "coordinates": {
                "lat": 35.4360844,
                "lng": -97.4787061
            }
        },
        {
            "address1": "212 Holiday Circle",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31419",
            "coordinates": {
                "lat": 32.025153,
                "lng": -81.240329
            }
        },
        {
            "address1": "32 Amsden Street",
            "address2": "#1",
            "city": "Arlington",
            "state": "MA",
            "postalCode": "02474",
            "coordinates": {
                "lat": 42.4043927,
                "lng": -71.138137
            }
        },
        {
            "address1": "4016 Doane Street",
            "address2": "",
            "city": "Fremont",
            "state": "CA",
            "postalCode": "94538",
            "coordinates": {
                "lat": 37.514834,
                "lng": -121.95302
            }
        },
        {
            "address1": "8700 Lillington Circle",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36117",
            "coordinates": {
                "lat": 32.330168,
                "lng": -86.14481099999999
            }
        },
        {
            "address1": "7720 Allison Street",
            "address2": "#105",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80005",
            "coordinates": {
                "lat": 39.8383411,
                "lng": -105.0855734
            }
        },
        {
            "address1": "17878 Front Beach Road",
            "address2": "#C-2",
            "city": "Panama City Beach",
            "state": "FL",
            "postalCode": "32413",
            "coordinates": {
                "lat": 30.237658,
                "lng": -85.91577099999999
            }
        },
        {
            "address1": "1328 Tuckerman Street Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20011",
            "coordinates": {
                "lat": 38.9673595,
                "lng": -77.03106919999999
            }
        },
        {
            "address1": "4600 East Huntsville Road",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.0476559,
                "lng": -94.0953342
            }
        },
        {
            "address1": "5038 North Cimarron Drive",
            "address2": "",
            "city": "Beverly Hills",
            "state": "FL",
            "postalCode": "34465",
            "coordinates": {
                "lat": 28.935938,
                "lng": -82.527367
            }
        },
        {
            "address1": "1216 West Hill Street",
            "address2": "M",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40210",
            "coordinates": {
                "lat": 38.227343,
                "lng": -85.7764254
            }
        },
        {
            "address1": "3033 Aubert Avenue",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40206",
            "coordinates": {
                "lat": 38.250779,
                "lng": -85.679931
            }
        },
        {
            "address1": "17020 West 64th Drive",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80007",
            "coordinates": {
                "lat": 39.8131034,
                "lng": -105.1914804
            }
        },
        {
            "address1": "12420 West Montebello Avenue",
            "address2": "",
            "city": "Litchfield Park",
            "state": "AZ",
            "postalCode": "85340",
            "coordinates": {
                "lat": 33.519491,
                "lng": -112.32613
            }
        },
        {
            "address1": "2538 East 40th Plaza",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32405",
            "coordinates": {
                "lat": 30.221455,
                "lng": -85.626834
            }
        },
        {
            "address1": "827 10th Street Northeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20002",
            "coordinates": {
                "lat": 38.901021,
                "lng": -76.992391
            }
        },
        {
            "address1": "5912 North 48th Avenue",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85301",
            "coordinates": {
                "lat": 33.5231022,
                "lng": -112.162186
            }
        },
        {
            "address1": "37 Fieldside Drive",
            "address2": "",
            "city": "Groton",
            "state": "CT",
            "postalCode": "06340",
            "coordinates": {
                "lat": 41.3668422,
                "lng": -72.07844349999999
            }
        },
        {
            "address1": "9176 Ellis Way",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80005",
            "coordinates": {
                "lat": 39.8624095,
                "lng": -105.1574648
            }
        },
        {
            "address1": "5370 Business Park Drive",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36116",
            "coordinates": {
                "lat": 32.317376,
                "lng": -86.232969
            }
        },
        {
            "address1": "1612 Beech Street",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40211",
            "coordinates": {
                "lat": 38.2296247,
                "lng": -85.805719
            }
        },
        {
            "address1": "8532 Ingalls Circle",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80003",
            "coordinates": {
                "lat": 39.8532617,
                "lng": -105.0629712
            }
        },
        {
            "address1": "7941 Alpine View Circle",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99507",
            "coordinates": {
                "lat": 61.1486467,
                "lng": -149.830947
            }
        },
        {
            "address1": "8595 West 81st Drive",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80005",
            "coordinates": {
                "lat": 39.8449341,
                "lng": -105.0937351
            }
        },
        {
            "address1": "4296 North Blossom Court",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.1288759,
                "lng": -94.1239252
            }
        },
        {
            "address1": "1738 Annabellas Drive",
            "address2": "",
            "city": "Panama City Beach",
            "state": "FL",
            "postalCode": "32407",
            "coordinates": {
                "lat": 30.1877596,
                "lng": -85.7782311
            }
        },
        {
            "address1": "3215 Madsen Street",
            "address2": "",
            "city": "Hayward",
            "state": "CA",
            "postalCode": "94541",
            "coordinates": {
                "lat": 37.6618825,
                "lng": -122.0904612
            }
        },
        {
            "address1": "4 Village Lake Drive",
            "address2": "#4",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.0994717,
                "lng": -94.1570279
            }
        },
        {
            "address1": "86 Russell Street",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.77985700000001,
                "lng": -72.525724
            }
        },
        {
            "address1": "570 Broadway",
            "address2": "",
            "city": "Lynnfield",
            "state": "MA",
            "postalCode": "01940",
            "coordinates": {
                "lat": 42.517525,
                "lng": -71.00125799999999
            }
        },
        {
            "address1": "1405 Monroe Street Northeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20017",
            "coordinates": {
                "lat": 38.93258,
                "lng": -76.98579699999999
            }
        },
        {
            "address1": "900 North Leverett Avenue",
            "address2": "#126",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.0754825,
                "lng": -94.1696884
            }
        },
        {
            "address1": "222 Quince Street",
            "address2": "#2-B",
            "city": "San Diego",
            "state": "CA",
            "postalCode": "92103",
            "coordinates": {
                "lat": 32.7368499,
                "lng": -117.162443
            }
        },
        {
            "address1": "370 Wallace Road",
            "address2": "#D-28",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37211",
            "coordinates": {
                "lat": 36.078257,
                "lng": -86.724182
            }
        },
        {
            "address1": "6672 Urban Court",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80004",
            "coordinates": {
                "lat": 39.817946,
                "lng": -105.13477
            }
        },
        {
            "address1": "516 Southwest 60th Terrace",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73139",
            "coordinates": {
                "lat": 35.4051605,
                "lng": -97.5223633
            }
        },
        {
            "address1": "1513 Southeast 9th Street",
            "address2": "",
            "city": "Moore",
            "state": "OK",
            "postalCode": "73160",
            "coordinates": {
                "lat": 35.329431,
                "lng": -97.465397
            }
        },
        {
            "address1": "154 Byrd Drive",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32404",
            "coordinates": {
                "lat": 30.161691,
                "lng": -85.59920199999999
            }
        },
        {
            "address1": "1106 Homer Avenue",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31405",
            "coordinates": {
                "lat": 32.0453896,
                "lng": -81.12456809999999
            }
        },
        {
            "address1": "1010 M Street Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20001",
            "coordinates": {
                "lat": 38.9054822,
                "lng": -77.0265494
            }
        },
        {
            "address1": "5420 Allison Street",
            "address2": "#202",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80002",
            "coordinates": {
                "lat": 39.7958727,
                "lng": -105.0858231
            }
        },
        {
            "address1": "20 Hacker Street",
            "address2": "#3",
            "city": "Worcester",
            "state": "MA",
            "postalCode": "01603",
            "coordinates": {
                "lat": 42.244896,
                "lng": -71.8175172
            }
        },
        {
            "address1": "732 Kevin Court",
            "address2": "",
            "city": "Oakland",
            "state": "CA",
            "postalCode": "94621",
            "coordinates": {
                "lat": 37.757904,
                "lng": -122.206479
            }
        },
        {
            "address1": "509 Franklin Street Northeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20017",
            "coordinates": {
                "lat": 38.9255849,
                "lng": -76.9990895
            }
        },
        {
            "address1": "23 Whitcomb Street",
            "address2": "",
            "city": "Springfield",
            "state": "VT",
            "postalCode": "05156",
            "coordinates": {
                "lat": 43.2987361,
                "lng": -72.4880749
            }
        },
        {
            "address1": "3377 Sandstone Court",
            "address2": "",
            "city": "Pleasanton",
            "state": "CA",
            "postalCode": "94588",
            "coordinates": {
                "lat": 37.680463,
                "lng": -121.860128
            }
        },
        {
            "address1": "14 Huntington Street",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.7772379,
                "lng": -72.518456
            }
        },
        {
            "address1": "2802 US Highway 98",
            "address2": "BLDG F",
            "city": "Mexico Beach",
            "state": "FL",
            "postalCode": "32456",
            "coordinates": {
                "lat": 29.9474344,
                "lng": -85.4170788
            }
        },
        {
            "address1": "412 Virginia Avenue",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40222",
            "coordinates": {
                "lat": 38.2538807,
                "lng": -85.6152334
            }
        },
        {
            "address1": "1644 New Jersey Avenue Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20001",
            "coordinates": {
                "lat": 38.91233,
                "lng": -77.017736
            }
        },
        {
            "address1": "832 51st Street Northeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20019",
            "coordinates": {
                "lat": 38.9008832,
                "lng": -76.9273381
            }
        },
        {
            "address1": "894 Windmill Park Lane",
            "address2": "",
            "city": "Mountain View",
            "state": "CA",
            "postalCode": "94043",
            "coordinates": {
                "lat": 37.399505,
                "lng": -122.077478
            }
        },
        {
            "address1": "9636 Morar Road",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32409",
            "coordinates": {
                "lat": 30.324968,
                "lng": -85.620589
            }
        },
        {
            "address1": "9472 Noble Way",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80007",
            "coordinates": {
                "lat": 39.8690661,
                "lng": -105.1784169
            }
        },
        {
            "address1": "618 Staley Avenue",
            "address2": "",
            "city": "Hayward",
            "state": "CA",
            "postalCode": "94541",
            "coordinates": {
                "lat": 37.6629263,
                "lng": -122.091801
            }
        },
        {
            "address1": "8704 Bayberry Place",
            "address2": "",
            "city": "Plantation",
            "state": "KY",
            "postalCode": "40242",
            "coordinates": {
                "lat": 38.2814983,
                "lng": -85.5918425
            }
        },
        {
            "address1": "2506 West Madison Street",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40211",
            "coordinates": {
                "lat": 38.253755,
                "lng": -85.7933322
            }
        },
        {
            "address1": "840 Inglewood Drive",
            "address2": "",
            "city": "West Sacramento",
            "state": "CA",
            "postalCode": "95605",
            "coordinates": {
                "lat": 38.591235,
                "lng": -121.524984
            }
        },
        {
            "address1": "10 Dalry Lane",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31419",
            "coordinates": {
                "lat": 31.941447,
                "lng": -81.160151
            }
        },
        {
            "address1": "3301 Nora Lane",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40220",
            "coordinates": {
                "lat": 38.199844,
                "lng": -85.61509
            }
        },
        {
            "address1": "8304 Glaser Lane",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40291",
            "coordinates": {
                "lat": 38.1437892,
                "lng": -85.6080724
            }
        },
        {
            "address1": "3720 West 86th Avenue",
            "address2": "APT F",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99502",
            "coordinates": {
                "lat": 61.142615,
                "lng": -149.949251
            }
        },
        {
            "address1": "3298 Chestnut Street Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20015",
            "coordinates": {
                "lat": 38.979577,
                "lng": -77.061088
            }
        },
        {
            "address1": "82 Fairfield Street",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.7673619,
                "lng": -72.53831
            }
        },
        {
            "address1": "3138 P Street Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20007",
            "coordinates": {
                "lat": 38.9091118,
                "lng": -77.0629963
            }
        },
        {
            "address1": "80 Locust Avenue",
            "address2": "#110",
            "city": "Worcester",
            "state": "MA",
            "postalCode": "01604",
            "coordinates": {
                "lat": 42.266896,
                "lng": -71.762913
            }
        },
        {
            "address1": "2715 Thornbrook Court",
            "address2": "",
            "city": "Odenton",
            "state": "MD",
            "postalCode": "21113",
            "coordinates": {
                "lat": 39.06450299999999,
                "lng": -76.727459
            }
        },
        {
            "address1": "3579 2nd Avenue",
            "address2": "",
            "city": "Edgewater",
            "state": "MD",
            "postalCode": "21037",
            "coordinates": {
                "lat": 38.91283200000001,
                "lng": -76.5224099
            }
        },
        {
            "address1": "6739 Taft Court",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80004",
            "coordinates": {
                "lat": 39.8189901,
                "lng": -105.1325295
            }
        },
        {
            "address1": "1528 Stafford Avenue",
            "address2": "",
            "city": "Hayward",
            "state": "CA",
            "postalCode": "94541",
            "coordinates": {
                "lat": 37.680081,
                "lng": -122.074569
            }
        },
        {
            "address1": "2024 Merrily Drive",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36111",
            "coordinates": {
                "lat": 32.3328739,
                "lng": -86.28072999999999
            }
        },
        {
            "address1": "2034 Fairfax Road",
            "address2": "",
            "city": "Annapolis",
            "state": "MD",
            "postalCode": "21401",
            "coordinates": {
                "lat": 38.9734343,
                "lng": -76.5357427
            }
        },
        {
            "address1": "1430 East Audubon Road",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36111",
            "coordinates": {
                "lat": 32.328226,
                "lng": -86.28300399999999
            }
        },
        {
            "address1": "3652 East Blue Stone Drive",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72764",
            "coordinates": {
                "lat": 36.139309,
                "lng": -94.1078069
            }
        },
        {
            "address1": "3302 Woodland Park Drive",
            "address2": "#APT 000001",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99517",
            "coordinates": {
                "lat": 61.190512,
                "lng": -149.927286
            }
        },
        {
            "address1": "1771 Daisey Court",
            "address2": "",
            "city": "Millersville",
            "state": "MD",
            "postalCode": "21108",
            "coordinates": {
                "lat": 39.044662,
                "lng": -76.64797399999999
            }
        },
        {
            "address1": "406 East Waldburg Street",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31401",
            "coordinates": {
                "lat": 32.064691,
                "lng": -81.092321
            }
        },
        {
            "address1": "11843 North 60th Avenue",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85304",
            "coordinates": {
                "lat": 33.594584,
                "lng": -112.188319
            }
        },
        {
            "address1": "9515 West 74th Avenue",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80005",
            "coordinates": {
                "lat": 39.831067,
                "lng": -105.103952
            }
        },
        {
            "address1": "119 Antioch Pike",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37211",
            "coordinates": {
                "lat": 36.10072,
                "lng": -86.72331
            }
        },
        {
            "address1": "1157 1st Street Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20001",
            "coordinates": {
                "lat": 38.90538280000001,
                "lng": -77.0121662
            }
        },
        {
            "address1": "3578 Galindo Street",
            "address2": "",
            "city": "Oakland",
            "state": "CA",
            "postalCode": "94601",
            "coordinates": {
                "lat": 37.783471,
                "lng": -122.2149729
            }
        },
        {
            "address1": "12800 Saunders Road",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99516",
            "coordinates": {
                "lat": 61.10499799999999,
                "lng": -149.746856
            }
        },
        {
            "address1": "5556 West Northview Avenue",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85301",
            "coordinates": {
                "lat": 33.5433092,
                "lng": -112.1797889
            }
        },
        {
            "address1": "3617 Oak Grove Circle",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36116",
            "coordinates": {
                "lat": 32.333812,
                "lng": -86.21464499999999
            }
        },
        {
            "address1": "2443 Sierra Nevada Road",
            "address2": "#N5",
            "city": "Mammoth Lakes",
            "state": "CA",
            "postalCode": "93546",
            "coordinates": {
                "lat": 37.641304,
                "lng": -118.971489
            }
        },
        {
            "address1": "10124 Watsonville Road",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40272",
            "coordinates": {
                "lat": 38.105204,
                "lng": -85.820047
            }
        },
        {
            "address1": "2441 Chase Park Drive",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36110",
            "coordinates": {
                "lat": 32.4266516,
                "lng": -86.2700112
            }
        },
        {
            "address1": "28 Wayne Avenue",
            "address2": "",
            "city": "Waltham",
            "state": "MA",
            "postalCode": "02453",
            "coordinates": {
                "lat": 42.3806325,
                "lng": -71.2015761
            }
        },
        {
            "address1": "3605 Normandy Place South",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37209",
            "coordinates": {
                "lat": 36.1459501,
                "lng": -86.8276312
            }
        },
        {
            "address1": "25538 Calaroga Avenue",
            "address2": "",
            "city": "Hayward",
            "state": "CA",
            "postalCode": "94545",
            "coordinates": {
                "lat": 37.642952,
                "lng": -122.098647
            }
        },
        {
            "address1": "1521 159th Avenue",
            "address2": "",
            "city": "San Leandro",
            "state": "CA",
            "postalCode": "94578",
            "coordinates": {
                "lat": 37.70179340000001,
                "lng": -122.1192658
            }
        },
        {
            "address1": "344 Island Road",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31406",
            "coordinates": {
                "lat": 31.927239,
                "lng": -81.09320199999999
            }
        },
        {
            "address1": "826 South Hancock Street",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40203",
            "coordinates": {
                "lat": 38.2408519,
                "lng": -85.744652
            }
        },
        {
            "address1": "2212 Greenville Street",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36107",
            "coordinates": {
                "lat": 32.3767039,
                "lng": -86.275049
            }
        },
        {
            "address1": "325 East 7th Street",
            "address2": "",
            "city": "Edmond",
            "state": "OK",
            "postalCode": "73034",
            "coordinates": {
                "lat": 35.6480391,
                "lng": -97.47550249999999
            }
        },
        {
            "address1": "7 Maple Hill Road",
            "address2": "",
            "city": "Aquinnah",
            "state": "MA",
            "postalCode": "02535",
            "coordinates": {
                "lat": 41.33201400000001,
                "lng": -70.8181309
            }
        },
        {
            "address1": "73455 Twentynine Palms Highway",
            "address2": "",
            "city": "Twentynine Palms",
            "state": "CA",
            "postalCode": "92277",
            "coordinates": {
                "lat": 34.1353352,
                "lng": -116.0598794
            }
        },
        {
            "address1": "410 West 89th Avenue",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99515",
            "coordinates": {
                "lat": 61.1402906,
                "lng": -149.8870399
            }
        },
        {
            "address1": "24147 Clinton Court",
            "address2": "",
            "city": "Hayward",
            "state": "CA",
            "postalCode": "94545",
            "coordinates": {
                "lat": 37.648857,
                "lng": -122.112388
            }
        },
        {
            "address1": "5620 Lilly Street",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32404",
            "coordinates": {
                "lat": 30.148082,
                "lng": -85.58977999999999
            }
        },
        {
            "address1": "207 Spruce Street",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.7690054,
                "lng": -72.51569599999999
            }
        },
        {
            "address1": "236 Alden Road",
            "address2": "",
            "city": "Hayward",
            "state": "CA",
            "postalCode": "94541",
            "coordinates": {
                "lat": 37.682588,
                "lng": -122.112121
            }
        },
        {
            "address1": "467 North Mountain Ranch Road",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72704",
            "coordinates": {
                "lat": 36.0706293,
                "lng": -94.2107741
            }
        },
        {
            "address1": "2042 High Street",
            "address2": "",
            "city": "Oakland",
            "state": "CA",
            "postalCode": "94601",
            "coordinates": {
                "lat": 37.776415,
                "lng": -122.209418
            }
        },
        {
            "address1": "6244 Sun River Drive",
            "address2": "",
            "city": "Sacramento",
            "state": "CA",
            "postalCode": "95824",
            "coordinates": {
                "lat": 38.512894,
                "lng": -121.41258
            }
        },
        {
            "address1": "8801 Rosshire Drive",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40118",
            "coordinates": {
                "lat": 38.1216631,
                "lng": -85.7505505
            }
        },
        {
            "address1": "449 15th Street Northeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20002",
            "coordinates": {
                "lat": 38.896241,
                "lng": -76.983372
            }
        },
        {
            "address1": "4385 Wares Ferry Road",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36109",
            "coordinates": {
                "lat": 32.389301,
                "lng": -86.228872
            }
        },
        {
            "address1": "8546 North 59th Lane",
            "address2": "#171",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85302",
            "coordinates": {
                "lat": 33.5615847,
                "lng": -112.1884147
            }
        },
        {
            "address1": "8262 Elvaton Road",
            "address2": "",
            "city": "Millersville",
            "state": "MD",
            "postalCode": "21108",
            "coordinates": {
                "lat": 39.12422,
                "lng": -76.610394
            }
        },
        {
            "address1": "7018 Russell Court",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80007",
            "coordinates": {
                "lat": 39.824701,
                "lng": -105.186699
            }
        },
        {
            "address1": "1353 West 27th Avenue",
            "address2": "#APT 000004",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99503",
            "coordinates": {
                "lat": 61.19630069999999,
                "lng": -149.9098041
            }
        },
        {
            "address1": "1030 Lake Claire Drive",
            "address2": "",
            "city": "Annapolis",
            "state": "MD",
            "postalCode": "21409",
            "coordinates": {
                "lat": 39.048603,
                "lng": -76.448911
            }
        },
        {
            "address1": "10980 Splendor Loop",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99577",
            "coordinates": {
                "lat": 61.319069,
                "lng": -149.563601
            }
        },
        {
            "address1": "36043 Soapberry Commons",
            "address2": "",
            "city": "Fremont",
            "state": "CA",
            "postalCode": "94536",
            "coordinates": {
                "lat": 37.555484,
                "lng": -122.012744
            }
        },
        {
            "address1": "419 Wabasso Avenue",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40209",
            "coordinates": {
                "lat": 38.1812976,
                "lng": -85.7511801
            }
        },
        {
            "address1": "2098 Lower Newton Street",
            "address2": "",
            "city": "Saint Albans City",
            "state": "VT",
            "postalCode": "05478",
            "coordinates": {
                "lat": 44.843051,
                "lng": -73.106488
            }
        },
        {
            "address1": "115 Waddell Road",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.7660221,
                "lng": -72.5477647
            }
        },
        {
            "address1": "463 East Rutgers Loop",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36109",
            "coordinates": {
                "lat": 32.386378,
                "lng": -86.22309899999999
            }
        },
        {
            "address1": "31130 Meadowbrook Avenue",
            "address2": "",
            "city": "Hayward",
            "state": "CA",
            "postalCode": "94544",
            "coordinates": {
                "lat": 37.61744100000001,
                "lng": -122.038397
            }
        },
        {
            "address1": "8506 Laviento Drive",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99515",
            "coordinates": {
                "lat": 61.143603,
                "lng": -149.8784269
            }
        },
        {
            "address1": "19404 North 77th Avenue",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85308",
            "coordinates": {
                "lat": 33.6603179,
                "lng": -112.223814
            }
        },
        {
            "address1": "302 East Granada Street",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.1004549,
                "lng": -94.15316299999999
            }
        },
        {
            "address1": "9321 Amy Lane",
            "address2": "",
            "city": "Panama City Beach",
            "state": "FL",
            "postalCode": "32407",
            "coordinates": {
                "lat": 30.186053,
                "lng": -85.79181899999999
            }
        },
        {
            "address1": "1156 Greenhill Road",
            "address2": "",
            "city": "Arnold",
            "state": "MD",
            "postalCode": "21012",
            "coordinates": {
                "lat": 39.052169,
                "lng": -76.48806499999999
            }
        },
        {
            "address1": "30 Curtis Road",
            "address2": "#509",
            "city": "Milton",
            "state": "MA",
            "postalCode": "02186",
            "coordinates": {
                "lat": 42.2660192,
                "lng": -71.0910829
            }
        },
        {
            "address1": "904 Shepherd Street Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20011",
            "coordinates": {
                "lat": 38.9396331,
                "lng": -77.0252273
            }
        },
        {
            "address1": "124 Crane Street",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32413",
            "coordinates": {
                "lat": 30.203032,
                "lng": -85.84606699999999
            }
        },
        {
            "address1": "15847 West 74th Place",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80007",
            "coordinates": {
                "lat": 39.832021,
                "lng": -105.178337
            }
        },
        {
            "address1": "435 Granite Street",
            "address2": "",
            "city": "Quincy",
            "state": "MA",
            "postalCode": "02169",
            "coordinates": {
                "lat": 42.2404974,
                "lng": -71.01624509999999
            }
        },
        {
            "address1": "4418 Signal Hill Road",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40207",
            "coordinates": {
                "lat": 38.27605399999999,
                "lng": -85.650572
            }
        },
        {
            "address1": "2285 Wold Run Drive",
            "address2": "#1",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72704",
            "coordinates": {
                "lat": 36.0992725,
                "lng": -94.19149589999999
            }
        },
        {
            "address1": "110 Castle Hill",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.7820711,
                "lng": -72.4827912
            }
        },
        {
            "address1": "8474 Chase Drive",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80003",
            "coordinates": {
                "lat": 39.8522641,
                "lng": -105.0715699
            }
        },
        {
            "address1": "4074 North Sunflower Circle",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.125209,
                "lng": -94.1317431
            }
        },
        {
            "address1": "249 Yellow Leaf Circle",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99504",
            "coordinates": {
                "lat": 61.221345,
                "lng": -149.71888
            }
        },
        {
            "address1": "8010 Holland Court",
            "address2": "D",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80005",
            "coordinates": {
                "lat": 39.84229029999999,
                "lng": -105.1030368
            }
        },
        {
            "address1": "1300 East Dowling Road",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99518",
            "coordinates": {
                "lat": 61.1663648,
                "lng": -149.858972
            }
        },
        {
            "address1": "189 Danforth Street",
            "address2": "",
            "city": "Framingham",
            "state": "MA",
            "postalCode": "01701",
            "coordinates": {
                "lat": 42.3259861,
                "lng": -71.39104990000001
            }
        },
        {
            "address1": "1011 Bell Avenue",
            "address2": "",
            "city": "Glen Burnie",
            "state": "MD",
            "postalCode": "21060",
            "coordinates": {
                "lat": 39.177114,
                "lng": -76.59223899999999
            }
        },
        {
            "address1": "5224 Wasena Avenue",
            "address2": "",
            "city": "Baltimore",
            "state": "MD",
            "postalCode": "21225",
            "coordinates": {
                "lat": 39.223779,
                "lng": -76.60339499999999
            }
        },
        {
            "address1": "7613 Yule Court",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80007",
            "coordinates": {
                "lat": 39.834511,
                "lng": -105.202472
            }
        },
        {
            "address1": "1243 Doris Avenue",
            "address2": "",
            "city": "Pasadena",
            "state": "MD",
            "postalCode": "21122",
            "coordinates": {
                "lat": 39.109591,
                "lng": -76.486294
            }
        },
        {
            "address1": "3504 East 5th Street",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32401",
            "coordinates": {
                "lat": 30.156461,
                "lng": -85.61573399999999
            }
        },
        {
            "address1": "1 Dunsmuir Lane",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31411",
            "coordinates": {
                "lat": 31.891353,
                "lng": -81.053618
            }
        },
        {
            "address1": "1320 Dunbarton Road",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36117",
            "coordinates": {
                "lat": 32.401737,
                "lng": -86.19376799999999
            }
        },
        {
            "address1": "14524 Lodestar Drive",
            "address2": "",
            "city": "Grass Valley",
            "state": "CA",
            "postalCode": "95949",
            "coordinates": {
                "lat": 39.101221,
                "lng": -121.008546
            }
        },
        {
            "address1": "8404 West Myrtle Avenue",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85305",
            "coordinates": {
                "lat": 33.5414927,
                "lng": -112.2400905
            }
        },
        {
            "address1": "620 Oakland Avenue",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.072612,
                "lng": -94.17295999999999
            }
        },
        {
            "address1": "39 Cottage Street",
            "address2": "",
            "city": "Athol",
            "state": "MA",
            "postalCode": "01331",
            "coordinates": {
                "lat": 42.5926786,
                "lng": -72.2271482
            }
        },
        {
            "address1": "82 Lookout Mountain Drive",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.75723,
                "lng": -72.491035
            }
        },
        {
            "address1": "1635 Generals Highway",
            "address2": "",
            "city": "Annapolis",
            "state": "MD",
            "postalCode": "21401",
            "coordinates": {
                "lat": 39.0139641,
                "lng": -76.5724717
            }
        },
        {
            "address1": "555 North Dupont Avenue",
            "address2": "#C-55",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37115",
            "coordinates": {
                "lat": 36.268033,
                "lng": -86.6999979
            }
        },
        {
            "address1": "2505 North Hampton Court",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.0959268,
                "lng": -94.1238079
            }
        },
        {
            "address1": "136 Acacia Drive",
            "address2": "",
            "city": "Blue Lake",
            "state": "CA",
            "postalCode": "95525",
            "coordinates": {
                "lat": 40.879484,
                "lng": -123.978726
            }
        },
        {
            "address1": "22825 North 74th Lane",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85310",
            "coordinates": {
                "lat": 33.691213,
                "lng": -112.219428
            }
        },
        {
            "address1": "643 Farragut Street Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20011",
            "coordinates": {
                "lat": 38.951281,
                "lng": -77.021523
            }
        },
        {
            "address1": "17 West 26th Circle",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.033699,
                "lng": -94.15958800000001
            }
        },
        {
            "address1": "335 C Street Southeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20003",
            "coordinates": {
                "lat": 38.8858796,
                "lng": -77.00075350000002
            }
        },
        {
            "address1": "1418 Paddocks Court",
            "address2": "",
            "city": "Crownsville",
            "state": "MD",
            "postalCode": "21032",
            "coordinates": {
                "lat": 39.05389,
                "lng": -76.623632
            }
        },
        {
            "address1": "2917 Miramar Drive",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72704",
            "coordinates": {
                "lat": 36.107054,
                "lng": -94.2004709
            }
        },
        {
            "address1": "301 Argonaut Street",
            "address2": "",
            "city": "Panama City Beach",
            "state": "FL",
            "postalCode": "32413",
            "coordinates": {
                "lat": 30.20514,
                "lng": -85.84755899999999
            }
        },
        {
            "address1": "12901 Mission Circle",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99516",
            "coordinates": {
                "lat": 61.10380240000001,
                "lng": -149.8253975
            }
        },
        {
            "address1": "3013 Sprowl Road",
            "address2": "#4",
            "city": "Jeffersontown",
            "state": "KY",
            "postalCode": "40299",
            "coordinates": {
                "lat": 38.1966913,
                "lng": -85.5693363
            }
        },
        {
            "address1": "5929 West Via Montoya Drive",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85310",
            "coordinates": {
                "lat": 33.68642,
                "lng": -112.188159
            }
        },
        {
            "address1": "325 Joseph Circle",
            "address2": "",
            "city": "Southport",
            "state": "FL",
            "postalCode": "32409",
            "coordinates": {
                "lat": 30.407817,
                "lng": -85.684715
            }
        },
        {
            "address1": "922 Urciolo Court",
            "address2": "",
            "city": "Annapolis",
            "state": "MD",
            "postalCode": "21401",
            "coordinates": {
                "lat": 38.979099,
                "lng": -76.57732589999999
            }
        },
        {
            "address1": "2212 Daffin Drive",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31404",
            "coordinates": {
                "lat": 32.027338,
                "lng": -81.07870799999999
            }
        },
        {
            "address1": "1401 Cordova Street",
            "address2": "#APT 000006",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99501",
            "coordinates": {
                "lat": 61.20849370000001,
                "lng": -149.8792198
            }
        },
        {
            "address1": "8064 Claytie Circle",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37221",
            "coordinates": {
                "lat": 36.06466899999999,
                "lng": -86.976433
            }
        },
        {
            "address1": "566 Middle Turnpike East",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.7850955,
                "lng": -72.4967557
            }
        },
        {
            "address1": "93 Hamlin Street",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.7735186,
                "lng": -72.5152106
            }
        },
        {
            "address1": "123 Remember Baker Lane",
            "address2": "",
            "city": "Hartford",
            "state": "VT",
            "postalCode": "05001",
            "coordinates": {
                "lat": 43.6696484,
                "lng": -72.4299719
            }
        },
        {
            "address1": "125 Connors Street",
            "address2": "#516",
            "city": "Gardner",
            "state": "MA",
            "postalCode": "01440",
            "coordinates": {
                "lat": 42.5738871,
                "lng": -71.9966865
            }
        },
        {
            "address1": "2315 Chestnut Street",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36107",
            "coordinates": {
                "lat": 32.367382,
                "lng": -86.27867599999999
            }
        },
        {
            "address1": "2716 30th Street Southeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20020",
            "coordinates": {
                "lat": 38.855798,
                "lng": -76.96482499999999
            }
        },
        {
            "address1": "2406 Lindbergh Drive",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40208",
            "coordinates": {
                "lat": 38.215833,
                "lng": -85.775153
            }
        },
        {
            "address1": "2035 Ninth Street",
            "address2": "R A",
            "city": "Berkeley",
            "state": "CA",
            "postalCode": "94710",
            "coordinates": {
                "lat": 37.8676351,
                "lng": -122.2938418
            }
        },
        {
            "address1": "34 Holyoke Road",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.753855,
                "lng": -72.498972
            }
        },
        {
            "address1": "2276 West Woodley Square",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36116",
            "coordinates": {
                "lat": 32.3256494,
                "lng": -86.2702235
            }
        },
        {
            "address1": "20251 North 75th Avenue",
            "address2": "#1046",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85308",
            "coordinates": {
                "lat": 33.6696067,
                "lng": -112.2196548
            }
        },
        {
            "address1": "72 Bentley Avenue",
            "address2": "",
            "city": "Poultney",
            "state": "VT",
            "postalCode": "05764",
            "coordinates": {
                "lat": 43.5158214,
                "lng": -73.2343441
            }
        },
        {
            "address1": "2807 Huxley Place",
            "address2": "",
            "city": "Fremont",
            "state": "CA",
            "postalCode": "94555",
            "coordinates": {
                "lat": 37.584941,
                "lng": -122.03291
            }
        },
        {
            "address1": "7772 West Palmaire Avenue",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85303",
            "coordinates": {
                "lat": 33.540431,
                "lng": -112.227013
            }
        },
        {
            "address1": "82 Linnmore Drive",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.777262,
                "lng": -72.54537499999999
            }
        },
        {
            "address1": "882 Plantation Way",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36117",
            "coordinates": {
                "lat": 32.400186,
                "lng": -86.20771099999999
            }
        },
        {
            "address1": "8150 North 61st Avenue",
            "address2": "#3128",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85302",
            "coordinates": {
                "lat": 33.555668,
                "lng": -112.1926295
            }
        },
        {
            "address1": "503 Orchard Road",
            "address2": "",
            "city": "Glen Burnie",
            "state": "MD",
            "postalCode": "21061",
            "coordinates": {
                "lat": 39.19076099999999,
                "lng": -76.64618
            }
        },
        {
            "address1": "3616 Echo Lane",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37218",
            "coordinates": {
                "lat": 36.236713,
                "lng": -86.833956
            }
        },
        {
            "address1": "376 Whites Road",
            "address2": "",
            "city": "Wilmington",
            "state": "VT",
            "postalCode": "05363",
            "coordinates": {
                "lat": 42.880951,
                "lng": -72.84163699999999
            }
        },
        {
            "address1": "322 East Taylor Street",
            "address2": "#1103",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31401",
            "coordinates": {
                "lat": 32.0706543,
                "lng": -81.0908408
            }
        },
        {
            "address1": "605 Main Street",
            "address2": "",
            "city": "Watertown",
            "state": "MA",
            "postalCode": "02472",
            "coordinates": {
                "lat": 42.373378,
                "lng": -71.202116
            }
        },
        {
            "address1": "238 West Rock Street",
            "address2": "#4",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.0609635,
                "lng": -94.1628029
            }
        },
        {
            "address1": "1819 Q Street Southeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20020",
            "coordinates": {
                "lat": 38.870406,
                "lng": -76.978219
            }
        },
        {
            "address1": "1261 Sioux Terrace",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37115",
            "coordinates": {
                "lat": 36.247799,
                "lng": -86.670508
            }
        },
        {
            "address1": "7002 Secrest Court",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80007",
            "coordinates": {
                "lat": 39.8236009,
                "lng": -105.1901759
            }
        },
        {
            "address1": "169 Avenida Drive",
            "address2": "M",
            "city": "Berkeley",
            "state": "CA",
            "postalCode": "94708",
            "coordinates": {
                "lat": 37.884824,
                "lng": -122.249694
            }
        },
        {
            "address1": "6095 Terry Lane",
            "address2": "",
            "city": "Golden",
            "state": "CO",
            "postalCode": "80403",
            "coordinates": {
                "lat": 39.807376,
                "lng": -105.191019
            }
        },
        {
            "address1": "3620 Colmar Drive",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40211",
            "coordinates": {
                "lat": 38.235977,
                "lng": -85.81636
            }
        },
        {
            "address1": "8820 Vaughn Road",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36117",
            "coordinates": {
                "lat": 32.337777,
                "lng": -86.13765590000001
            }
        },
        {
            "address1": "113 Hammarlee Road",
            "address2": "",
            "city": "Glen Burnie",
            "state": "MD",
            "postalCode": "21060",
            "coordinates": {
                "lat": 39.177265,
                "lng": -76.602519
            }
        },
        {
            "address1": "281 MacArthur Boulevard",
            "address2": "",
            "city": "Oakland",
            "state": "CA",
            "postalCode": "94610",
            "coordinates": {
                "lat": 37.8147324,
                "lng": -122.25217
            }
        },
        {
            "address1": "8159 West 81st Avenue",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80005",
            "coordinates": {
                "lat": 39.843993,
                "lng": -105.089124
            }
        },
        {
            "address1": "512 North Center Avenue",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32401",
            "coordinates": {
                "lat": 30.15768199999999,
                "lng": -85.6292129
            }
        },
        {
            "address1": "4876 Norris Road",
            "address2": "",
            "city": "Fremont",
            "state": "CA",
            "postalCode": "94536",
            "coordinates": {
                "lat": 37.543515,
                "lng": -122.008143
            }
        },
        {
            "address1": "8378 Cole Street",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80005",
            "coordinates": {
                "lat": 39.8479398,
                "lng": -105.1526049
            }
        },
        {
            "address1": "2406 Brighton Drive",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40205",
            "coordinates": {
                "lat": 38.217094,
                "lng": -85.66769599999999
            }
        },
        {
            "address1": "19 Heritage",
            "address2": "",
            "city": "Oakland",
            "state": "CA",
            "postalCode": "94605",
            "coordinates": {
                "lat": 37.765568,
                "lng": -122.129528
            }
        },
        {
            "address1": "6228 West Larkspur Drive",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85304",
            "coordinates": {
                "lat": 33.600267,
                "lng": -112.193207
            }
        },
        {
            "address1": "2504 Longest Avenue",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40204",
            "coordinates": {
                "lat": 38.239449,
                "lng": -85.7079849
            }
        },
        {
            "address1": "3 Mad Anthony Lane",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31411",
            "coordinates": {
                "lat": 31.949414,
                "lng": -81.02015399999999
            }
        },
        {
            "address1": "2248 South Sutherland Drive",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36116",
            "coordinates": {
                "lat": 32.331721,
                "lng": -86.19776999999999
            }
        },
        {
            "address1": "330 Michell Court",
            "address2": "",
            "city": "Livermore",
            "state": "CA",
            "postalCode": "94551",
            "coordinates": {
                "lat": 37.690035,
                "lng": -121.759468
            }
        },
        {
            "address1": "6748 West San Juan Avenue",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85303",
            "coordinates": {
                "lat": 33.518939,
                "lng": -112.205511
            }
        },
        {
            "address1": "1734 Tamarack Street Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20012",
            "coordinates": {
                "lat": 38.993375,
                "lng": -77.04060299999999
            }
        },
        {
            "address1": "915 Arkansas Avenue",
            "address2": "",
            "city": "Lynn Haven",
            "state": "FL",
            "postalCode": "32444",
            "coordinates": {
                "lat": 30.244151,
                "lng": -85.6392089
            }
        },
        {
            "address1": "116 Queens Lane",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37218",
            "coordinates": {
                "lat": 36.214841,
                "lng": -86.859562
            }
        },
        {
            "address1": "8 Linden Circle",
            "address2": "",
            "city": "Somerville",
            "state": "MA",
            "postalCode": "02143",
            "coordinates": {
                "lat": 42.3879993,
                "lng": -71.11345200000001
            }
        },
        {
            "address1": "4 Chamois Court",
            "address2": "",
            "city": "Pooler",
            "state": "GA",
            "postalCode": "31322",
            "coordinates": {
                "lat": 32.088701,
                "lng": -81.24825
            }
        },
        {
            "address1": "6941 West 87th Way",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80003",
            "coordinates": {
                "lat": 39.852809,
                "lng": -105.073449
            }
        },
        {
            "address1": "354 North University Avenue",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.0659848,
                "lng": -94.16817080000001
            }
        },
        {
            "address1": "6145 East Castro Valley Boulevard",
            "address2": "",
            "city": "Castro Valley",
            "state": "CA",
            "postalCode": "94552",
            "coordinates": {
                "lat": 37.6992206,
                "lng": -122.0300502
            }
        },
        {
            "address1": "1401 Saint George Avenue",
            "address2": "",
            "city": "Moore",
            "state": "OK",
            "postalCode": "73160",
            "coordinates": {
                "lat": 35.3503092,
                "lng": -97.5079329
            }
        },
        {
            "address1": "1713 Arrow Cove Lane",
            "address2": "",
            "city": "Annapolis",
            "state": "MD",
            "postalCode": "21401",
            "coordinates": {
                "lat": 39.00848999999999,
                "lng": -76.53611699999999
            }
        },
        {
            "address1": "56 Gardner Street",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.7630186,
                "lng": -72.5033322
            }
        },
        {
            "address1": "327 Idlewylde Drive",
            "address2": "#3",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40206",
            "coordinates": {
                "lat": 38.260003,
                "lng": -85.70065199999999
            }
        },
        {
            "address1": "18789 Crane Avenue",
            "address2": "",
            "city": "Castro Valley",
            "state": "CA",
            "postalCode": "94546",
            "coordinates": {
                "lat": 37.70902600000001,
                "lng": -122.059504
            }
        },
        {
            "address1": "814 East 10th Court",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32401",
            "coordinates": {
                "lat": 30.166997,
                "lng": -85.648022
            }
        },
        {
            "address1": "6431 Shattuck Avenue",
            "address2": "B",
            "city": "Oakland",
            "state": "CA",
            "postalCode": "94609",
            "coordinates": {
                "lat": 37.85015,
                "lng": -122.266142
            }
        },
        {
            "address1": "4719 Bayou Bluff Trail",
            "address2": "",
            "city": "Lynn Haven",
            "state": "FL",
            "postalCode": "32444",
            "coordinates": {
                "lat": 30.236109,
                "lng": -85.599884
            }
        },
        {
            "address1": "24 Lambert Street",
            "address2": "",
            "city": "Medford",
            "state": "MA",
            "postalCode": "02155",
            "coordinates": {
                "lat": 42.4235908,
                "lng": -71.093309
            }
        },
        {
            "address1": "1318 35th Street Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20007",
            "coordinates": {
                "lat": 38.90724700000001,
                "lng": -77.0690174
            }
        },
        {
            "address1": "4807 North Grove Avenue",
            "address2": "",
            "city": "Warr Acres",
            "state": "OK",
            "postalCode": "73122",
            "coordinates": {
                "lat": 35.5203601,
                "lng": -97.6147122
            }
        },
        {
            "address1": "4408 Bonaparte Boulevard",
            "address2": "",
            "city": "Midwest City",
            "state": "OK",
            "postalCode": "73110",
            "coordinates": {
                "lat": 35.482651,
                "lng": -97.38337399999999
            }
        },
        {
            "address1": "73 Twin Hills Drive",
            "address2": "",
            "city": "Longmeadow",
            "state": "MA",
            "postalCode": "01106",
            "coordinates": {
                "lat": 42.0420378,
                "lng": -72.5428872
            }
        },
        {
            "address1": "34 Harris Street",
            "address2": "#6",
            "city": "Brookline",
            "state": "MA",
            "postalCode": "02446",
            "coordinates": {
                "lat": 42.3382219,
                "lng": -71.12330899999999
            }
        },
        {
            "address1": "22352 North 67th Drive",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85310",
            "coordinates": {
                "lat": 33.686126,
                "lng": -112.203991
            }
        },
        {
            "address1": "11522 Country Spring Court",
            "address2": "",
            "city": "Cupertino",
            "state": "CA",
            "postalCode": "95014",
            "coordinates": {
                "lat": 37.3004559,
                "lng": -122.049009
            }
        },
        {
            "address1": "21 Soling Avenue",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31419",
            "coordinates": {
                "lat": 32.0376484,
                "lng": -81.2540562
            }
        },
        {
            "address1": "302 Mcmillin Street",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37203",
            "coordinates": {
                "lat": 36.1583239,
                "lng": -86.7947425
            }
        },
        {
            "address1": "129 Grant Street",
            "address2": "",
            "city": "Redlands",
            "state": "CA",
            "postalCode": "92373",
            "coordinates": {
                "lat": 34.0529643,
                "lng": -117.1847245
            }
        },
        {
            "address1": "3035 South Highway A1A",
            "address2": "#3B",
            "city": "Melbourne Beach",
            "state": "FL",
            "postalCode": "32951",
            "coordinates": {
                "lat": 28.0357085,
                "lng": -80.54249569999999
            }
        },
        {
            "address1": "1637 Acre Circle",
            "address2": "",
            "city": "Panama City Beach",
            "state": "FL",
            "postalCode": "32407",
            "coordinates": {
                "lat": 30.18644399999999,
                "lng": -85.78322299999999
            }
        },
        {
            "address1": "130 West Brown Road",
            "address2": "",
            "city": "Mesa",
            "state": "AZ",
            "postalCode": "85201",
            "coordinates": {
                "lat": 33.4356918,
                "lng": -111.8348295
            }
        },
        {
            "address1": "2632 Jackson Street East",
            "address2": "",
            "city": "Carson",
            "state": "CA",
            "postalCode": "90810",
            "coordinates": {
                "lat": 33.8360282,
                "lng": -118.2202665
            }
        },
        {
            "address1": "4503 North Council Road",
            "address2": "",
            "city": "Bethany",
            "state": "OK",
            "postalCode": "73008",
            "coordinates": {
                "lat": 35.5176604,
                "lng": -97.65550879999999
            }
        },
        {
            "address1": "119 Redwood Road",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.751289,
                "lng": -72.563575
            }
        },
        {
            "address1": "5721 Frank Hough Road",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32404",
            "coordinates": {
                "lat": 30.23643,
                "lng": -85.559361
            }
        },
        {
            "address1": "2917 Danzig Place",
            "address2": "#102",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40245",
            "coordinates": {
                "lat": 38.280137,
                "lng": -85.49418639999999
            }
        },
        {
            "address1": "26563 Chisholm Court",
            "address2": "",
            "city": "Hayward",
            "state": "CA",
            "postalCode": "94544",
            "coordinates": {
                "lat": 37.641711,
                "lng": -122.078659
            }
        },
        {
            "address1": "4221 East Mission Boulevard",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.0954898,
                "lng": -94.10028220000001
            }
        },
        {
            "address1": "6021 Yarrow Street",
            "address2": "#A1",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80004",
            "coordinates": {
                "lat": 39.806803,
                "lng": -105.084306
            }
        },
        {
            "address1": "7102 North 43rd Avenue",
            "address2": "#160",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85301",
            "coordinates": {
                "lat": 33.5415384,
                "lng": -112.1514119
            }
        },
        {
            "address1": "3386 Sudlersville South",
            "address2": "",
            "city": "Laurel",
            "state": "MD",
            "postalCode": "20724",
            "coordinates": {
                "lat": 39.089731,
                "lng": -76.81937599999999
            }
        },
        {
            "address1": "6022 West Alice Avenue",
            "address2": "#3",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85302",
            "coordinates": {
                "lat": 33.5640709,
                "lng": -112.1893361
            }
        },
        {
            "address1": "580 Hollow Wood Road",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36109",
            "coordinates": {
                "lat": 32.3914018,
                "lng": -86.2181083
            }
        },
        {
            "address1": "435 East 5th Avenue",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99501",
            "coordinates": {
                "lat": 61.217854,
                "lng": -149.875705
            }
        },
        {
            "address1": "6713 Holt Road",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37211",
            "coordinates": {
                "lat": 36.013723,
                "lng": -86.729686
            }
        },
        {
            "address1": "5605 North Terry Avenue",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73111",
            "coordinates": {
                "lat": 35.526483,
                "lng": -97.4830379
            }
        },
        {
            "address1": "412 West Ila Street",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.071266,
                "lng": -94.165154
            }
        },
        {
            "address1": "9403 Fairground Road",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40291",
            "coordinates": {
                "lat": 38.17058,
                "lng": -85.5852139
            }
        },
        {
            "address1": "6049 Quail Street",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80004",
            "coordinates": {
                "lat": 39.806876,
                "lng": -105.1239949
            }
        },
        {
            "address1": "17 Hillcrest Road",
            "address2": "",
            "city": "Rutland",
            "state": "VT",
            "postalCode": "05701",
            "coordinates": {
                "lat": 43.6216373,
                "lng": -72.9688374
            }
        },
        {
            "address1": "424 Callan Avenue",
            "address2": "#216",
            "city": "San Leandro",
            "state": "CA",
            "postalCode": "94577",
            "coordinates": {
                "lat": 37.72780789999999,
                "lng": -122.152331
            }
        },
        {
            "address1": "105 Gilmore Street",
            "address2": "",
            "city": "Glen Burnie",
            "state": "MD",
            "postalCode": "21061",
            "coordinates": {
                "lat": 39.176817,
                "lng": -76.630884
            }
        },
        {
            "address1": "910 Arlington Terrace",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.077652,
                "lng": -94.14529000000002
            }
        },
        {
            "address1": "2204 7th Street Road",
            "address2": "#12",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40208",
            "coordinates": {
                "lat": 38.218784,
                "lng": -85.7800649
            }
        },
        {
            "address1": "11 North Vineyard Drive",
            "address2": "",
            "city": "Pueblo West",
            "state": "CO",
            "postalCode": "81007",
            "coordinates": {
                "lat": 38.318953,
                "lng": -104.680591
            }
        },
        {
            "address1": "3505 Albee Drive",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37076",
            "coordinates": {
                "lat": 36.181781,
                "lng": -86.611408
            }
        },
        {
            "address1": "689 Stableway Road",
            "address2": "",
            "city": "Pike Road",
            "state": "AL",
            "postalCode": "36064",
            "coordinates": {
                "lat": 32.354837,
                "lng": -86.076679
            }
        },
        {
            "address1": "102 East Cydnee Street",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.10683,
                "lng": -94.155547
            }
        },
        {
            "address1": "208 Towne Lake Way",
            "address2": "",
            "city": "Pooler",
            "state": "GA",
            "postalCode": "31322",
            "coordinates": {
                "lat": 32.137605,
                "lng": -81.25850600000001
            }
        },
        {
            "address1": "2555 West 69th Court",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99502",
            "coordinates": {
                "lat": 61.158468,
                "lng": -149.933297
            }
        },
        {
            "address1": "58 Rice Street Southwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20032",
            "coordinates": {
                "lat": 38.83841899999999,
                "lng": -77.0113105
            }
        },
        {
            "address1": "2961 Vinson Road",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36110",
            "coordinates": {
                "lat": 32.42687530000001,
                "lng": -86.2080404
            }
        },
        {
            "address1": "172 Chestnut Street",
            "address2": "",
            "city": "Lynn",
            "state": "MA",
            "postalCode": "01902",
            "coordinates": {
                "lat": 42.4696809,
                "lng": -70.93746680000001
            }
        },
        {
            "address1": "307 Meadowood Court",
            "address2": "",
            "city": "Lynn Haven",
            "state": "FL",
            "postalCode": "32444",
            "coordinates": {
                "lat": 30.237071,
                "lng": -85.60347
            }
        },
        {
            "address1": "403 Turkey Creek Road",
            "address2": "",
            "city": "Mathews",
            "state": "AL",
            "postalCode": "36052",
            "coordinates": {
                "lat": 32.220426,
                "lng": -86.059168
            }
        },
        {
            "address1": "11 Rosewood Lane",
            "address2": "",
            "city": "Essex",
            "state": "VT",
            "postalCode": "05452",
            "coordinates": {
                "lat": 44.4912319,
                "lng": -73.097297
            }
        },
        {
            "address1": "102 Old Depot Road",
            "address2": "#14",
            "city": "Farmington",
            "state": "AR",
            "postalCode": "72730",
            "coordinates": {
                "lat": 36.040414,
                "lng": -94.245223
            }
        },
        {
            "address1": "9 Pierce Road",
            "address2": "",
            "city": "Watertown",
            "state": "MA",
            "postalCode": "02472",
            "coordinates": {
                "lat": 42.380059,
                "lng": -71.19283399999999
            }
        },
        {
            "address1": "15254 North 52nd Avenue",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85306",
            "coordinates": {
                "lat": 33.6244609,
                "lng": -112.171094
            }
        },
        {
            "address1": "11140 West 60th Avenue",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80004",
            "coordinates": {
                "lat": 39.805639,
                "lng": -105.122694
            }
        },
        {
            "address1": "803 18th Avenue South",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37203",
            "coordinates": {
                "lat": 36.1500199,
                "lng": -86.79477
            }
        },
        {
            "address1": "918 Cheryl Ann Circle",
            "address2": "",
            "city": "Hayward",
            "state": "CA",
            "postalCode": "94544",
            "coordinates": {
                "lat": 37.635859,
                "lng": -122.076923
            }
        },
        {
            "address1": "1328 Jenks Avenue",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32401",
            "coordinates": {
                "lat": 30.1726222,
                "lng": -85.6620902
            }
        },
        {
            "address1": "2201 Marks Mill Lane",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.0917726,
                "lng": -94.15142089999999
            }
        },
        {
            "address1": "12371 Atlanta Highway",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36117",
            "coordinates": {
                "lat": 32.369194,
                "lng": -86.06518799999999
            }
        },
        {
            "address1": "3437 Sommerville Drive",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36111",
            "coordinates": {
                "lat": 32.342288,
                "lng": -86.256546
            }
        },
        {
            "address1": "829 Dunbarton Road",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36117",
            "coordinates": {
                "lat": 32.397179,
                "lng": -86.205326
            }
        },
        {
            "address1": "8 Kozera Avenue",
            "address2": "",
            "city": "Hadley",
            "state": "MA",
            "postalCode": "01035",
            "coordinates": {
                "lat": 42.36135549999999,
                "lng": -72.57288930000001
            }
        },
        {
            "address1": "89 High Ledge Circle",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.7495971,
                "lng": -72.476336
            }
        },
        {
            "address1": "35 Lakewood Circle South",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.754591,
                "lng": -72.52192000000001
            }
        },
        {
            "address1": "2222 Martin Luther King Junior Boulevard",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.0554972,
                "lng": -94.1910602
            }
        },
        {
            "address1": "1720 Quacco Road",
            "address2": "A",
            "city": "Pooler",
            "state": "GA",
            "postalCode": "31322",
            "coordinates": {
                "lat": 32.062374,
                "lng": -81.269502
            }
        },
        {
            "address1": "116 Jourdan Street",
            "address2": "",
            "city": "Hinesburg",
            "state": "VT",
            "postalCode": "05461",
            "coordinates": {
                "lat": 44.347454,
                "lng": -73.08877600000001
            }
        },
        {
            "address1": "2507 R Street Southeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20020",
            "coordinates": {
                "lat": 38.869211,
                "lng": -76.970202
            }
        },
        {
            "address1": "4719 West Cochise Drive",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85302",
            "coordinates": {
                "lat": 33.580297,
                "lng": -112.161185
            }
        },
        {
            "address1": "1838 Crofton Parkway",
            "address2": "",
            "city": "Crofton",
            "state": "MD",
            "postalCode": "21114",
            "coordinates": {
                "lat": 38.9983069,
                "lng": -76.67975299999999
            }
        },
        {
            "address1": "26 Seaman Circle",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.7668725,
                "lng": -72.5461613
            }
        },
        {
            "address1": "2572 Drake Street",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36108",
            "coordinates": {
                "lat": 32.342203,
                "lng": -86.33643599999999
            }
        },
        {
            "address1": "4231 Miramonte Way",
            "address2": "",
            "city": "Union City",
            "state": "CA",
            "postalCode": "94587",
            "coordinates": {
                "lat": 37.591721,
                "lng": -122.075993
            }
        },
        {
            "address1": "2508 Grant Avenue",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32405",
            "coordinates": {
                "lat": 30.193964,
                "lng": -85.712509
            }
        },
        {
            "address1": "6505 South Lagoon Drive",
            "address2": "",
            "city": "Panama City Beach",
            "state": "FL",
            "postalCode": "32408",
            "coordinates": {
                "lat": 30.155249,
                "lng": -85.76467099999999
            }
        },
        {
            "address1": "2032 Gorgas Street",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36106",
            "coordinates": {
                "lat": 32.357466,
                "lng": -86.27658699999999
            }
        },
        {
            "address1": "1129 I Street",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99501",
            "coordinates": {
                "lat": 61.2110743,
                "lng": -149.899634
            }
        },
        {
            "address1": "5201 North Miller Avenue",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73112",
            "coordinates": {
                "lat": 35.523283,
                "lng": -97.561933
            }
        },
        {
            "address1": "1987 Boxer Court",
            "address2": "",
            "city": "San Lorenzo",
            "state": "CA",
            "postalCode": "94580",
            "coordinates": {
                "lat": 37.670738,
                "lng": -122.147019
            }
        },
        {
            "address1": "3219 Lakeshore Drive",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37138",
            "coordinates": {
                "lat": 36.242959,
                "lng": -86.625265
            }
        },
        {
            "address1": "415 West 42nd Street",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31401",
            "coordinates": {
                "lat": 32.0543472,
                "lng": -81.1064222
            }
        },
        {
            "address1": "5792 Owl Hill Avenue",
            "address2": "",
            "city": "Santa Rosa",
            "state": "CA",
            "postalCode": "95409",
            "coordinates": {
                "lat": 38.467127,
                "lng": -122.640498
            }
        },
        {
            "address1": "6816 West 84th Circle",
            "address2": "#42",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80003",
            "coordinates": {
                "lat": 39.848863,
                "lng": -105.0735009
            }
        },
        {
            "address1": "1900 West Virginia Avenue Northeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20002",
            "coordinates": {
                "lat": 38.9114897,
                "lng": -76.9847941
            }
        },
        {
            "address1": "2936 State Avenue",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32405",
            "coordinates": {
                "lat": 30.202236,
                "lng": -85.66611499999999
            }
        },
        {
            "address1": "2604 13th Street",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31408",
            "coordinates": {
                "lat": 32.092738,
                "lng": -81.17643199999999
            }
        },
        {
            "address1": "10304 North 179th Drive",
            "address2": "",
            "city": "Waddell",
            "state": "AZ",
            "postalCode": "85355",
            "coordinates": {
                "lat": 33.5780134,
                "lng": -112.4458901
            }
        },
        {
            "address1": "8142 Mallard Shore Drive",
            "address2": "",
            "city": "Laurel",
            "state": "MD",
            "postalCode": "20724",
            "coordinates": {
                "lat": 39.112812,
                "lng": -76.80575499999999
            }
        },
        {
            "address1": "653 Stratton Arlington Road",
            "address2": "",
            "city": "Stratton",
            "state": "VT",
            "postalCode": "05360",
            "coordinates": {
                "lat": 43.04115300000001,
                "lng": -72.90772199999999
            }
        },
        {
            "address1": "2414 Parker Street",
            "address2": "#R 16",
            "city": "Berkeley",
            "state": "CA",
            "postalCode": "94704",
            "coordinates": {
                "lat": 37.862903,
                "lng": -122.2595092
            }
        },
        {
            "address1": "43 Westminster Street",
            "address2": "",
            "city": "Pittsfield",
            "state": "MA",
            "postalCode": "01201",
            "coordinates": {
                "lat": 42.458409,
                "lng": -73.23273499999999
            }
        },
        {
            "address1": "422 C Street Northeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20002",
            "coordinates": {
                "lat": 38.8942029,
                "lng": -76.99988809999999
            }
        },
        {
            "address1": "535 Saddlewood Lane",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36109",
            "coordinates": {
                "lat": 32.39012,
                "lng": -86.218373
            }
        },
        {
            "address1": "7910 West Krall Street",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85303",
            "coordinates": {
                "lat": 33.534019,
                "lng": -112.2299964
            }
        },
        {
            "address1": "1600 20th Street Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20009",
            "coordinates": {
                "lat": 38.9113128,
                "lng": -77.0451932
            }
        },
        {
            "address1": "1217 Bay Street",
            "address2": "#318-A",
            "city": "Tybee Island",
            "state": "GA",
            "postalCode": "31328",
            "coordinates": {
                "lat": 32.0222005,
                "lng": -80.8587482
            }
        },
        {
            "address1": "7645 Marshall Street",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80003",
            "coordinates": {
                "lat": 39.835952,
                "lng": -105.070063
            }
        },
        {
            "address1": "717 Joseph Avenue",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37207",
            "coordinates": {
                "lat": 36.183641,
                "lng": -86.772214
            }
        },
        {
            "address1": "2106 Standard Avenue",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40210",
            "coordinates": {
                "lat": 38.231378,
                "lng": -85.7922619
            }
        },
        {
            "address1": "316 20th Street Northeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20002",
            "coordinates": {
                "lat": 38.8939527,
                "lng": -76.97642739999999
            }
        },
        {
            "address1": "227 West Montgomery Cross Road",
            "address2": "#736",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31406",
            "coordinates": {
                "lat": 31.998812,
                "lng": -81.134464
            }
        },
        {
            "address1": "310 12th Avenue",
            "address2": "",
            "city": "Santa Cruz",
            "state": "CA",
            "postalCode": "95062",
            "coordinates": {
                "lat": 36.963154,
                "lng": -121.994045
            }
        },
        {
            "address1": "2685 California Street",
            "address2": "#APT 305",
            "city": "Mountain View",
            "state": "CA",
            "postalCode": "94040",
            "coordinates": {
                "lat": 37.4068693,
                "lng": -122.1129728
            }
        },
        {
            "address1": "6460 Vermont 113",
            "address2": "",
            "city": "Vershire",
            "state": "VT",
            "postalCode": "05079",
            "coordinates": {
                "lat": 43.9678972,
                "lng": -72.3154863
            }
        },
        {
            "address1": "8404 South Villa Avenue",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73159",
            "coordinates": {
                "lat": 35.3818163,
                "lng": -97.5570041
            }
        },
        {
            "address1": "7030 West Krall Street",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85303",
            "coordinates": {
                "lat": 33.534067,
                "lng": -112.210763
            }
        },
        {
            "address1": "189 Dalton Avenue",
            "address2": "",
            "city": "Pittsfield",
            "state": "MA",
            "postalCode": "01201",
            "coordinates": {
                "lat": 42.459217,
                "lng": -73.22532799999999
            }
        },
        {
            "address1": "2455 Manchester Drive",
            "address2": "",
            "city": "The Village",
            "state": "OK",
            "postalCode": "73120",
            "coordinates": {
                "lat": 35.576392,
                "lng": -97.55644629999999
            }
        },
        {
            "address1": "2405 230th Street",
            "address2": "",
            "city": "Pasadena",
            "state": "MD",
            "postalCode": "21122",
            "coordinates": {
                "lat": 39.12585,
                "lng": -76.549013
            }
        },
        {
            "address1": "589 East Main Street",
            "address2": "",
            "city": "Newport",
            "state": "VT",
            "postalCode": "05855",
            "coordinates": {
                "lat": 44.943275,
                "lng": -72.19193299999999
            }
        },
        {
            "address1": "1520 H Street Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20006",
            "coordinates": {
                "lat": 38.90021429999999,
                "lng": -77.0351541
            }
        },
        {
            "address1": "4603 Grant Street Northeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20019",
            "coordinates": {
                "lat": 38.8983173,
                "lng": -76.9364561
            }
        },
        {
            "address1": "171 Brickhill Circle",
            "address2": "",
            "city": "Pooler",
            "state": "GA",
            "postalCode": "31322",
            "coordinates": {
                "lat": 32.175349,
                "lng": -81.25099
            }
        },
        {
            "address1": "607 North 46th Avenue",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72704",
            "coordinates": {
                "lat": 36.0741371,
                "lng": -94.22645829999999
            }
        },
        {
            "address1": "9134 Brook Park Drive",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36117",
            "coordinates": {
                "lat": 32.3076534,
                "lng": -86.1451185
            }
        },
        {
            "address1": "2134 West Mills Drive",
            "address2": "",
            "city": "Orange",
            "state": "CA",
            "postalCode": "92868",
            "coordinates": {
                "lat": 33.786584,
                "lng": -117.875665
            }
        },
        {
            "address1": "2 Cockle Shell Road",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31419",
            "coordinates": {
                "lat": 31.960368,
                "lng": -81.229034
            }
        },
        {
            "address1": "1431 King George Boulevard",
            "address2": "#21-C",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31419",
            "coordinates": {
                "lat": 31.9775273,
                "lng": -81.2259819
            }
        },
        {
            "address1": "1804 Calhoun Avenue",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32405",
            "coordinates": {
                "lat": 30.181413,
                "lng": -85.693748
            }
        },
        {
            "address1": "23 Florida Avenue Northeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20002",
            "coordinates": {
                "lat": 38.910125,
                "lng": -77.00808099999999
            }
        },
        {
            "address1": "5630 Silverado Way",
            "address2": "#STE A8",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99518",
            "coordinates": {
                "lat": 61.1695128,
                "lng": -149.8896842
            }
        },
        {
            "address1": "11300 Lillian Lane",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99515",
            "coordinates": {
                "lat": 61.11845399999999,
                "lng": -149.881223
            }
        },
        {
            "address1": "2209 East Manor Drive",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.075132,
                "lng": -94.12903399999999
            }
        },
        {
            "address1": "8325 Northwest 19th Street",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73127",
            "coordinates": {
                "lat": 35.48856,
                "lng": -97.66233199999999
            }
        },
        {
            "address1": "6925 Lariat Lane",
            "address2": "",
            "city": "Castro Valley",
            "state": "CA",
            "postalCode": "94552",
            "coordinates": {
                "lat": 37.7157257,
                "lng": -122.0270913
            }
        },
        {
            "address1": "6721 Boundary Run",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37221",
            "coordinates": {
                "lat": 36.087655,
                "lng": -87.006136
            }
        },
        {
            "address1": "1700 William E Summers III Avenue",
            "address2": "#201",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40211",
            "coordinates": {
                "lat": 38.22952540000001,
                "lng": -85.82045680000002
            }
        },
        {
            "address1": "14 6th Street",
            "address2": "#1",
            "city": "Medford",
            "state": "MA",
            "postalCode": "02155",
            "coordinates": {
                "lat": 42.4074868,
                "lng": -71.07807670000001
            }
        },
        {
            "address1": "11865 West 74th Avenue",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80005",
            "coordinates": {
                "lat": 39.830545,
                "lng": -105.131624
            }
        },
        {
            "address1": "912 Countryside Lane",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36117",
            "coordinates": {
                "lat": 32.404751,
                "lng": -86.18589899999999
            }
        },
        {
            "address1": "6080 Frontier Lane",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37211",
            "coordinates": {
                "lat": 36.030597,
                "lng": -86.73436
            }
        },
        {
            "address1": "1124 Bluewillow Court",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37013",
            "coordinates": {
                "lat": 36.040783,
                "lng": -86.577798
            }
        },
        {
            "address1": "17722 North 79th Avenue",
            "address2": "#1135",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85308",
            "coordinates": {
                "lat": 33.646496,
                "lng": -112.2317614
            }
        },
        {
            "address1": "6 Oak Street",
            "address2": "",
            "city": "Town of Rockingham",
            "state": "VT",
            "postalCode": "05101",
            "coordinates": {
                "lat": 43.134108,
                "lng": -72.449474
            }
        },
        {
            "address1": "1537 Northwest 123rd Street",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73120",
            "coordinates": {
                "lat": 35.5961896,
                "lng": -97.53951699999999
            }
        },
        {
            "address1": "10001 Pheasant Lane",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73162",
            "coordinates": {
                "lat": 35.571646,
                "lng": -97.63995700000001
            }
        },
        {
            "address1": "10340 West 62nd Place",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80004",
            "coordinates": {
                "lat": 39.8101545,
                "lng": -105.1135667
            }
        },
        {
            "address1": "52 Oleary Drive",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.7716925,
                "lng": -72.5521002
            }
        },
        {
            "address1": "15082 North 59th Avenue",
            "address2": "#111",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85306",
            "coordinates": {
                "lat": 33.6231673,
                "lng": -112.1871757
            }
        },
        {
            "address1": "7047 Vinson Road",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32413",
            "coordinates": {
                "lat": 30.336868,
                "lng": -85.829662
            }
        },
        {
            "address1": "200 Edson Road",
            "address2": "",
            "city": "Windham",
            "state": "VT",
            "postalCode": "05359",
            "coordinates": {
                "lat": 43.2215166,
                "lng": -72.7049368
            }
        },
        {
            "address1": "150 Manistee Drive",
            "address2": "",
            "city": "Panama City Beach",
            "state": "FL",
            "postalCode": "32413",
            "coordinates": {
                "lat": 30.235428,
                "lng": -85.89155099999999
            }
        },
        {
            "address1": "2335 Orchard View Lane",
            "address2": "",
            "city": "Escondido",
            "state": "CA",
            "postalCode": "92027",
            "coordinates": {
                "lat": 33.119461,
                "lng": -117.007959
            }
        },
        {
            "address1": "65 Clark Street",
            "address2": "#2",
            "city": "Newton",
            "state": "MA",
            "postalCode": "02459",
            "coordinates": {
                "lat": 42.321396,
                "lng": -71.1995577
            }
        },
        {
            "address1": "18318 Pioneer Drive",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99577",
            "coordinates": {
                "lat": 61.364421,
                "lng": -149.540056
            }
        },
        {
            "address1": "110 Elmwood Avenue",
            "address2": "",
            "city": "Barre",
            "state": "VT",
            "postalCode": "05641",
            "coordinates": {
                "lat": 44.2097089,
                "lng": -72.50493600000001
            }
        },
        {
            "address1": "4800 Huffman Road",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99516",
            "coordinates": {
                "lat": 61.10827899999999,
                "lng": -149.791977
            }
        },
        {
            "address1": "8219 Minor Lane",
            "address2": "#9",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40219",
            "coordinates": {
                "lat": 38.12841,
                "lng": -85.7107249
            }
        },
        {
            "address1": "10129 Spring Gate Drive",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40241",
            "coordinates": {
                "lat": 38.312891,
                "lng": -85.562299
            }
        },
        {
            "address1": "65 Arcellia Drive",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06042",
            "coordinates": {
                "lat": 41.788139,
                "lng": -72.491989
            }
        },
        {
            "address1": "12460 West Solano Drive",
            "address2": "",
            "city": "Litchfield Park",
            "state": "AZ",
            "postalCode": "85340",
            "coordinates": {
                "lat": 33.520308,
                "lng": -112.3275521
            }
        },
        {
            "address1": "618 Watts Street",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36104",
            "coordinates": {
                "lat": 32.37152700000001,
                "lng": -86.294285
            }
        },
        {
            "address1": "5805 Armada Drive",
            "address2": "",
            "city": "Carlsbad",
            "state": "CA",
            "postalCode": "92008",
            "coordinates": {
                "lat": 33.1238541,
                "lng": -117.3152497
            }
        },
        {
            "address1": "1644 Queenstown Road",
            "address2": "",
            "city": "Nichols Hills",
            "state": "OK",
            "postalCode": "73116",
            "coordinates": {
                "lat": 35.542511,
                "lng": -97.547282
            }
        },
        {
            "address1": "143 Main Street",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06042",
            "coordinates": {
                "lat": 41.7886316,
                "lng": -72.52390249999999
            }
        },
        {
            "address1": "226 Tranquility Lane",
            "address2": "",
            "city": "Saint Albans Town",
            "state": "VT",
            "postalCode": "05488",
            "coordinates": {
                "lat": 44.8389381,
                "lng": -73.18372149999999
            }
        },
        {
            "address1": "831 21st Street Northeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20002",
            "coordinates": {
                "lat": 38.9011079,
                "lng": -76.974034
            }
        },
        {
            "address1": "22825 Paseo Place",
            "address2": "",
            "city": "Hayward",
            "state": "CA",
            "postalCode": "94541",
            "coordinates": {
                "lat": 37.6678961,
                "lng": -122.0832649
            }
        },
        {
            "address1": "2902 Flint Street",
            "address2": "",
            "city": "Union City",
            "state": "CA",
            "postalCode": "94587",
            "coordinates": {
                "lat": 37.60442,
                "lng": -122.069607
            }
        },
        {
            "address1": "919 Windsor Avenue",
            "address2": "",
            "city": "Annapolis",
            "state": "MD",
            "postalCode": "21403",
            "coordinates": {
                "lat": 38.968518,
                "lng": -76.4905689
            }
        },
        {
            "address1": "6041 North 72nd Lane",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85303",
            "coordinates": {
                "lat": 33.525117,
                "lng": -112.215039
            }
        },
        {
            "address1": "163 Highwood Drive",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.76664299999999,
                "lng": -72.490877
            }
        },
        {
            "address1": "1334 East 14th Avenue",
            "address2": "#APT 000004",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99501",
            "coordinates": {
                "lat": 61.208547,
                "lng": -149.857294
            }
        },
        {
            "address1": "223 Goose Pond Road",
            "address2": "",
            "city": "Fairfax",
            "state": "VT",
            "postalCode": "05454",
            "coordinates": {
                "lat": 44.653053,
                "lng": -72.971587
            }
        },
        {
            "address1": "1021 North Center Avenue",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32401",
            "coordinates": {
                "lat": 30.1670475,
                "lng": -85.6292984
            }
        },
        {
            "address1": "1559 Alabama Avenue Southeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20032",
            "coordinates": {
                "lat": 38.8467679,
                "lng": -76.98076200000001
            }
        },
        {
            "address1": "1238 Roanwood Way",
            "address2": "",
            "city": "Concord",
            "state": "CA",
            "postalCode": "94521",
            "coordinates": {
                "lat": 37.94042,
                "lng": -121.944464
            }
        },
        {
            "address1": "2068 Happy Lane",
            "address2": "",
            "city": "Crofton",
            "state": "MD",
            "postalCode": "21114",
            "coordinates": {
                "lat": 39.013318,
                "lng": -76.6754904
            }
        },
        {
            "address1": "5378 Allison Street",
            "address2": "#102",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80002",
            "coordinates": {
                "lat": 39.7944109,
                "lng": -105.0860024
            }
        },
        {
            "address1": "4604 Virginia Loop Road",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36116",
            "coordinates": {
                "lat": 32.314591,
                "lng": -86.24074999999999
            }
        },
        {
            "address1": "7711 North 51st Avenue",
            "address2": "#1180",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85301",
            "coordinates": {
                "lat": 33.5502243,
                "lng": -112.1665731
            }
        },
        {
            "address1": "343 Daman Drive",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36108",
            "coordinates": {
                "lat": 32.2999,
                "lng": -86.342286
            }
        },
        {
            "address1": "3623 Chateau Lane",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40219",
            "coordinates": {
                "lat": 38.1473803,
                "lng": -85.6954641
            }
        },
        {
            "address1": "2619 North Quality Lane",
            "address2": "#315",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.09925399999999,
                "lng": -94.164274
            }
        },
        {
            "address1": "5334 West Northern Avenue",
            "address2": "#327",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85301",
            "coordinates": {
                "lat": 33.5535111,
                "lng": -112.1747068
            }
        },
        {
            "address1": "3835 Oakes Drive",
            "address2": "",
            "city": "Hayward",
            "state": "CA",
            "postalCode": "94542",
            "coordinates": {
                "lat": 37.661345,
                "lng": -122.032784
            }
        },
        {
            "address1": "295 Townes Drive",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37211",
            "coordinates": {
                "lat": 36.052158,
                "lng": -86.70206900000001
            }
        },
        {
            "address1": "125 13th Street Northeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20002",
            "coordinates": {
                "lat": 38.891265,
                "lng": -76.988068
            }
        },
        {
            "address1": "7308 Northwest 119th Street",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73162",
            "coordinates": {
                "lat": 35.592396,
                "lng": -97.643619
            }
        },
        {
            "address1": "1911 East 58th Avenue",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99507",
            "coordinates": {
                "lat": 61.16876999999999,
                "lng": -149.847225
            }
        },
        {
            "address1": "22649 McManus Drive",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99567",
            "coordinates": {
                "lat": 61.418189,
                "lng": -149.460766
            }
        },
        {
            "address1": "4617 East 3rd Street",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32404",
            "coordinates": {
                "lat": 30.129243,
                "lng": -85.606926
            }
        },
        {
            "address1": "6436 Stoney Point Road",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32404",
            "coordinates": {
                "lat": 30.266241,
                "lng": -85.599245
            }
        },
        {
            "address1": "2577 Rhode Island Avenue Northeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20018",
            "coordinates": {
                "lat": 38.931902,
                "lng": -76.969579
            }
        },
        {
            "address1": "44 Campfield Road",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.768442,
                "lng": -72.540232
            }
        },
        {
            "address1": "7132 South Villa Avenue",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73159",
            "coordinates": {
                "lat": 35.392665,
                "lng": -97.5569639
            }
        },
        {
            "address1": "107 West Canton Circle",
            "address2": "",
            "city": "Springfield",
            "state": "MA",
            "postalCode": "01104",
            "coordinates": {
                "lat": 42.144682,
                "lng": -72.57098599999999
            }
        },
        {
            "address1": "14358 West 88th Place",
            "address2": "C",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80005",
            "coordinates": {
                "lat": 39.8568436,
                "lng": -105.161713
            }
        },
        {
            "address1": "2100 Sandy Creek Trail",
            "address2": "",
            "city": "Edmond",
            "state": "OK",
            "postalCode": "73013",
            "coordinates": {
                "lat": 35.63330699999999,
                "lng": -97.509911
            }
        },
        {
            "address1": "6404 West 82nd Drive",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80003",
            "coordinates": {
                "lat": 39.846475,
                "lng": -105.067397
            }
        },
        {
            "address1": "1609 Porter Avenue",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37206",
            "coordinates": {
                "lat": 36.196292,
                "lng": -86.725028
            }
        },
        {
            "address1": "8421 Thomas Drive",
            "address2": "#4",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32408",
            "coordinates": {
                "lat": 30.165178,
                "lng": -85.78605
            }
        },
        {
            "address1": "116 Frost Park",
            "address2": "",
            "city": "Hartford",
            "state": "VT",
            "postalCode": "05001",
            "coordinates": {
                "lat": 43.6692262,
                "lng": -72.3088865
            }
        },
        {
            "address1": "132 Tensaw Road",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36117",
            "coordinates": {
                "lat": 32.384289,
                "lng": -86.147064
            }
        },
        {
            "address1": "3147 West Old Farmington Road",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72704",
            "coordinates": {
                "lat": 36.0531475,
                "lng": -94.2055113
            }
        },
        {
            "address1": "3538 Mendenhall Court",
            "address2": "",
            "city": "Pleasanton",
            "state": "CA",
            "postalCode": "94588",
            "coordinates": {
                "lat": 37.6991919,
                "lng": -121.85909
            }
        },
        {
            "address1": "1623 Mines Road",
            "address2": "",
            "city": "Lowell",
            "state": "VT",
            "postalCode": "05847",
            "coordinates": {
                "lat": 44.795108,
                "lng": -72.48690599999999
            }
        },
        {
            "address1": "99 Pond Avenue",
            "address2": "#606",
            "city": "Brookline",
            "state": "MA",
            "postalCode": "02445",
            "coordinates": {
                "lat": 42.3293159,
                "lng": -71.1152839
            }
        },
        {
            "address1": "557 West Willoughby Road",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.019975,
                "lng": -94.16828199999999
            }
        },
        {
            "address1": "309 Brooke Court",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32404",
            "coordinates": {
                "lat": 30.1536175,
                "lng": -85.5881338
            }
        },
        {
            "address1": "4696 Bull Run Road",
            "address2": "",
            "city": "Ashland City",
            "state": "TN",
            "postalCode": "37015",
            "coordinates": {
                "lat": 36.241285,
                "lng": -86.940741
            }
        },
        {
            "address1": "18330 North 79th Avenue",
            "address2": "#3155",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85308",
            "coordinates": {
                "lat": 33.6487128,
                "lng": -112.2313289
            }
        },
        {
            "address1": "5601 West Missouri Avenue",
            "address2": "#165",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85301",
            "coordinates": {
                "lat": 33.5152999,
                "lng": -112.179748
            }
        },
        {
            "address1": "2903 West 31st Avenue",
            "address2": "#APT 000002",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99517",
            "coordinates": {
                "lat": 61.192819,
                "lng": -149.937665
            }
        },
        {
            "address1": "2611 Bluefield Avenue",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37214",
            "coordinates": {
                "lat": 36.16786,
                "lng": -86.670203
            }
        },
        {
            "address1": "203 East Gwinnett Street",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31401",
            "coordinates": {
                "lat": 32.06637,
                "lng": -81.093895
            }
        },
        {
            "address1": "3517 S Street Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20007",
            "coordinates": {
                "lat": 38.914807,
                "lng": -77.070229
            }
        },
        {
            "address1": "1123 Ardee Avenue",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37216",
            "coordinates": {
                "lat": 36.219121,
                "lng": -86.725616
            }
        },
        {
            "address1": "3811 W Street Southeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20020",
            "coordinates": {
                "lat": 38.8629369,
                "lng": -76.9515086
            }
        },
        {
            "address1": "2130 Loren Circle",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.071889,
                "lng": -94.191613
            }
        },
        {
            "address1": "4 Orchard Street",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.7747,
                "lng": -72.5247351
            }
        },
        {
            "address1": "4755 Coventry Road",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36116",
            "coordinates": {
                "lat": 32.318132,
                "lng": -86.28353
            }
        },
        {
            "address1": "1806 Boscobel Street",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37206",
            "coordinates": {
                "lat": 36.170799,
                "lng": -86.73835299999999
            }
        },
        {
            "address1": "7034 West John Garrison Road",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72704",
            "coordinates": {
                "lat": 36.107097,
                "lng": -94.2619139
            }
        },
        {
            "address1": "233 Juniper Drive",
            "address2": "",
            "city": "South Burlington",
            "state": "VT",
            "postalCode": "05403",
            "coordinates": {
                "lat": 44.473457,
                "lng": -73.176118
            }
        },
        {
            "address1": "1831 Frankford Avenue",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32405",
            "coordinates": {
                "lat": 30.181993,
                "lng": -85.692285
            }
        },
        {
            "address1": "4924 West 65th Avenue",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80003",
            "coordinates": {
                "lat": 39.8146604,
                "lng": -105.050343
            }
        },
        {
            "address1": "7095 Gladiola Street",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80004",
            "coordinates": {
                "lat": 39.824892,
                "lng": -105.162799
            }
        },
        {
            "address1": "7564 Moore Court",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80005",
            "coordinates": {
                "lat": 39.834188,
                "lng": -105.11569
            }
        },
        {
            "address1": "8442 Everett Way",
            "address2": "A",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80005",
            "coordinates": {
                "lat": 39.850942,
                "lng": -105.096599
            }
        },
        {
            "address1": "1330 West 82nd Avenue",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99518",
            "coordinates": {
                "lat": 61.147676,
                "lng": -149.905329
            }
        },
        {
            "address1": "4907 Roger Drive",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99507",
            "coordinates": {
                "lat": 61.17564799999999,
                "lng": -149.839627
            }
        },
        {
            "address1": "123 Blossom Road",
            "address2": "",
            "city": "Westport",
            "state": "MA",
            "postalCode": "02790",
            "coordinates": {
                "lat": 41.68531,
                "lng": -71.0961337
            }
        },
        {
            "address1": "915 Hargrove Street",
            "address2": "",
            "city": "Ardmore",
            "state": "OK",
            "postalCode": "73401",
            "coordinates": {
                "lat": 34.184371,
                "lng": -97.13386190000001
            }
        },
        {
            "address1": "1983 Reidsville Street",
            "address2": "",
            "city": "Annapolis",
            "state": "MD",
            "postalCode": "21401",
            "coordinates": {
                "lat": 38.9817243,
                "lng": -76.5313745
            }
        },
        {
            "address1": "12403 Deerfield Road",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31419",
            "coordinates": {
                "lat": 31.977229,
                "lng": -81.145139
            }
        },
        {
            "address1": "1011 Devon Drive",
            "address2": "",
            "city": "Hayward",
            "state": "CA",
            "postalCode": "94542",
            "coordinates": {
                "lat": 37.65444100000001,
                "lng": -122.067741
            }
        },
        {
            "address1": "5222 West Laurie Lane",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85302",
            "coordinates": {
                "lat": 33.5587639,
                "lng": -112.172235
            }
        },
        {
            "address1": "35 Pilgrim Lane",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.772138,
                "lng": -72.498806
            }
        },
        {
            "address1": "2728 Hale Avenue",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40211",
            "coordinates": {
                "lat": 38.2390813,
                "lng": -85.79926999999999
            }
        },
        {
            "address1": "65 Lowry Road",
            "address2": "",
            "city": "Falmouth",
            "state": "MA",
            "postalCode": "02540",
            "coordinates": {
                "lat": 41.5471365,
                "lng": -70.6075836
            }
        },
        {
            "address1": "302 Depot Road",
            "address2": "",
            "city": "Boxborough",
            "state": "MA",
            "postalCode": "01719",
            "coordinates": {
                "lat": 42.5013,
                "lng": -71.49441
            }
        },
        {
            "address1": "1402 Maggies Way",
            "address2": "",
            "city": "Waterbury Center",
            "state": "VT",
            "postalCode": "05677",
            "coordinates": {
                "lat": 44.410965,
                "lng": -72.71017499999999
            }
        },
        {
            "address1": "81 Lyness Street",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.76787789999999,
                "lng": -72.5443361
            }
        },
        {
            "address1": "6518 Dolphin Court",
            "address2": "",
            "city": "Glen Burnie",
            "state": "MD",
            "postalCode": "21061",
            "coordinates": {
                "lat": 39.198769,
                "lng": -76.63721
            }
        },
        {
            "address1": "1842 West Park Place",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73106",
            "coordinates": {
                "lat": 35.4795219,
                "lng": -97.5431009
            }
        },
        {
            "address1": "1 Pond View Road",
            "address2": "",
            "city": "Proctor",
            "state": "VT",
            "postalCode": "05765",
            "coordinates": {
                "lat": 43.663678,
                "lng": -73.0458419
            }
        },
        {
            "address1": "1340 5th Street Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20001",
            "coordinates": {
                "lat": 38.907549,
                "lng": -77.018924
            }
        },
        {
            "address1": "6000 Parker Drive",
            "address2": "",
            "city": "Deale",
            "state": "MD",
            "postalCode": "20751",
            "coordinates": {
                "lat": 38.780208,
                "lng": -76.539991
            }
        },
        {
            "address1": "822 Bowden Street",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31415",
            "coordinates": {
                "lat": 32.071342,
                "lng": -81.11783199999999
            }
        },
        {
            "address1": "1710 East Harold Street",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.109875,
                "lng": -94.1359389
            }
        },
        {
            "address1": "1518 Jenks Avenue",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32405",
            "coordinates": {
                "lat": 30.1765819,
                "lng": -85.662077
            }
        },
        {
            "address1": "814 South Pickard Avenue",
            "address2": "",
            "city": "Norman",
            "state": "OK",
            "postalCode": "73069",
            "coordinates": {
                "lat": 35.206961,
                "lng": -97.45494099999999
            }
        },
        {
            "address1": "100 Fenwick Village Drive",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31419",
            "coordinates": {
                "lat": 32.0244412,
                "lng": -81.23017689999999
            }
        },
        {
            "address1": "218 Middle Street",
            "address2": "",
            "city": "Brighton",
            "state": "VT",
            "postalCode": "05846",
            "coordinates": {
                "lat": 44.818438,
                "lng": -71.8846049
            }
        },
        {
            "address1": "5470 Atlanta Highway",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36109",
            "coordinates": {
                "lat": 32.3802399,
                "lng": -86.21232959999999
            }
        },
        {
            "address1": "43 Main Street",
            "address2": "",
            "city": "Essex",
            "state": "VT",
            "postalCode": "05452",
            "coordinates": {
                "lat": 44.4921,
                "lng": -73.1074749
            }
        },
        {
            "address1": "804 East 7th Court",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32401",
            "coordinates": {
                "lat": 30.161259,
                "lng": -85.648719
            }
        },
        {
            "address1": "1709 Queensbury Road",
            "address2": "",
            "city": "Moore",
            "state": "OK",
            "postalCode": "73160",
            "coordinates": {
                "lat": 35.3546959,
                "lng": -97.507938
            }
        },
        {
            "address1": "646 Clinton Street",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36108",
            "coordinates": {
                "lat": 32.3602725,
                "lng": -86.3183004
            }
        },
        {
            "address1": "708 Pine Drift Drive",
            "address2": "",
            "city": "Odenton",
            "state": "MD",
            "postalCode": "21113",
            "coordinates": {
                "lat": 39.070589,
                "lng": -76.715406
            }
        },
        {
            "address1": "5104 West Tierra Buena Lane",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85306",
            "coordinates": {
                "lat": 33.62898759999999,
                "lng": -112.168811
            }
        },
        {
            "address1": "1234 Carmel Street",
            "address2": "",
            "city": "Madera",
            "state": "CA",
            "postalCode": "93638",
            "coordinates": {
                "lat": 36.949941,
                "lng": -120.043739
            }
        },
        {
            "address1": "1753 Zion Road",
            "address2": "#E33",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.1273162,
                "lng": -94.1350437
            }
        },
        {
            "address1": "22538 6th Street",
            "address2": "",
            "city": "Hayward",
            "state": "CA",
            "postalCode": "94541",
            "coordinates": {
                "lat": 37.680829,
                "lng": -122.07335
            }
        },
        {
            "address1": "415 Lullwater Drive",
            "address2": "",
            "city": "Panama City Beach",
            "state": "FL",
            "postalCode": "32413",
            "coordinates": {
                "lat": 30.22177929999999,
                "lng": -85.8841423
            }
        },
        {
            "address1": "219 Bidwell Street",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.761322,
                "lng": -72.5498278
            }
        },
        {
            "address1": "4500 Margalo Avenue",
            "address2": "",
            "city": "Bakersfield",
            "state": "CA",
            "postalCode": "93313",
            "coordinates": {
                "lat": 35.305082,
                "lng": -119.052448
            }
        },
        {
            "address1": "8380 West 67th Avenue",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80004",
            "coordinates": {
                "lat": 39.817999,
                "lng": -105.090301
            }
        },
        {
            "address1": "2334 Nantucket Drive",
            "address2": "",
            "city": "Crofton",
            "state": "MD",
            "postalCode": "21114",
            "coordinates": {
                "lat": 39.0298609,
                "lng": -76.67307600000001
            }
        },
        {
            "address1": "720 East Muhammad Ali Boulevard",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40202",
            "coordinates": {
                "lat": 38.2491941,
                "lng": -85.7396682
            }
        },
        {
            "address1": "12022 Town Park Circle",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99577",
            "coordinates": {
                "lat": 61.32927710000001,
                "lng": -149.5778193
            }
        },
        {
            "address1": "2305 Ranchland Drive",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31404",
            "coordinates": {
                "lat": 32.026112,
                "lng": -81.0755779
            }
        },
        {
            "address1": "1656 Newton Street Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20010",
            "coordinates": {
                "lat": 38.933985,
                "lng": -77.03866099999999
            }
        },
        {
            "address1": "91 85th Avenue",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72704",
            "coordinates": {
                "lat": 36.064165,
                "lng": -94.285358
            }
        },
        {
            "address1": "228 Central Street",
            "address2": "",
            "city": "Milford",
            "state": "MA",
            "postalCode": "01757",
            "coordinates": {
                "lat": 42.13911,
                "lng": -71.5115022
            }
        },
        {
            "address1": "20 Masters Way",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.740694,
                "lng": -72.51832
            }
        },
        {
            "address1": "5396 North Reese Avenue",
            "address2": "",
            "city": "Fresno",
            "state": "CA",
            "postalCode": "93722",
            "coordinates": {
                "lat": 36.815278,
                "lng": -119.864119
            }
        },
        {
            "address1": "28 Wilfred Road",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.766696,
                "lng": -72.5597335
            }
        },
        {
            "address1": "200 Pheasant Avenue",
            "address2": "#103",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40118",
            "coordinates": {
                "lat": 38.1134628,
                "lng": -85.76321279999999
            }
        },
        {
            "address1": "1650 Garland Avenue",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.0845144,
                "lng": -94.1751065
            }
        },
        {
            "address1": "4600 Ritchie Highway",
            "address2": "",
            "city": "Baltimore",
            "state": "MD",
            "postalCode": "21225",
            "coordinates": {
                "lat": 39.228241,
                "lng": -76.6136159
            }
        },
        {
            "address1": "733 East DeRenne Avenue",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31405",
            "coordinates": {
                "lat": 32.024217,
                "lng": -81.095602
            }
        },
        {
            "address1": "8349 West Stella Way",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85305",
            "coordinates": {
                "lat": 33.529493,
                "lng": -112.240632
            }
        },
        {
            "address1": "33 Pond Avenue",
            "address2": "#804",
            "city": "Brookline",
            "state": "MA",
            "postalCode": "02445",
            "coordinates": {
                "lat": 42.33094200000001,
                "lng": -71.1145331
            }
        },
        {
            "address1": "9 Kimball Court",
            "address2": "#107",
            "city": "Burlington",
            "state": "MA",
            "postalCode": "01803",
            "coordinates": {
                "lat": 42.501798,
                "lng": -71.168725
            }
        },
        {
            "address1": "2433 Southwest 36th Street",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73109",
            "coordinates": {
                "lat": 35.42839900000001,
                "lng": -97.556119
            }
        },
        {
            "address1": "4607 Artelia Drive",
            "address2": "",
            "city": "Nashville",
            "state": "TN",
            "postalCode": "37013",
            "coordinates": {
                "lat": 36.071468,
                "lng": -86.675555
            }
        },
        {
            "address1": "212 Ambleside Drive",
            "address2": "",
            "city": "Severna Park",
            "state": "MD",
            "postalCode": "21146",
            "coordinates": {
                "lat": 39.097022,
                "lng": -76.55617699999999
            }
        },
        {
            "address1": "8757 Lamar Circle",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80003",
            "coordinates": {
                "lat": 39.8557446,
                "lng": -105.0681477
            }
        },
        {
            "address1": "130 Carolina Cherry Circle",
            "address2": "",
            "city": "Pooler",
            "state": "GA",
            "postalCode": "31322",
            "coordinates": {
                "lat": 32.1485911,
                "lng": -81.2620116
            }
        },
        {
            "address1": "7804 Abercorn Street",
            "address2": "#11",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31406",
            "coordinates": {
                "lat": 32.00192,
                "lng": -81.11689830000002
            }
        },
        {
            "address1": "12870 Old Seward Highway",
            "address2": "#STE 000105",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99515",
            "coordinates": {
                "lat": 61.10396369999999,
                "lng": -149.8575515
            }
        },
        {
            "address1": "8133 Meadowgreen Place",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40299",
            "coordinates": {
                "lat": 38.1899697,
                "lng": -85.60704779999999
            }
        },
        {
            "address1": "5 Meadow Lane",
            "address2": "",
            "city": "Rutland",
            "state": "VT",
            "postalCode": "05701",
            "coordinates": {
                "lat": 43.619797,
                "lng": -72.983231
            }
        },
        {
            "address1": "562 South Pierremont Drive",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.05627330000001,
                "lng": -94.1251461
            }
        },
        {
            "address1": "1219 Carleton Street",
            "address2": "M",
            "city": "Berkeley",
            "state": "CA",
            "postalCode": "94702",
            "coordinates": {
                "lat": 37.8591054,
                "lng": -122.285823
            }
        },
        {
            "address1": "1403 Boulder Court",
            "address2": "",
            "city": "Hanover",
            "state": "MD",
            "postalCode": "21076",
            "coordinates": {
                "lat": 39.140743,
                "lng": -76.69958
            }
        },
        {
            "address1": "122 Coral Drive",
            "address2": "",
            "city": "Panama City Beach",
            "state": "FL",
            "postalCode": "32413",
            "coordinates": {
                "lat": 30.233822,
                "lng": -85.89228399999999
            }
        },
        {
            "address1": "1404 James Way",
            "address2": "",
            "city": "Edgewater",
            "state": "MD",
            "postalCode": "21037",
            "coordinates": {
                "lat": 38.8879642,
                "lng": -76.5100926
            }
        },
        {
            "address1": "4300 Woodley Square",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36116",
            "coordinates": {
                "lat": 32.3269015,
                "lng": -86.2695368
            }
        },
        {
            "address1": "422 Richmond Street",
            "address2": "",
            "city": "El Cerrito",
            "state": "CA",
            "postalCode": "94530",
            "coordinates": {
                "lat": 37.9028101,
                "lng": -122.2981152
            }
        },
        {
            "address1": "222 Plymouth Street",
            "address2": "A",
            "city": "Middleborough",
            "state": "MA",
            "postalCode": "02346",
            "coordinates": {
                "lat": 41.928117,
                "lng": -70.9416075
            }
        },
        {
            "address1": "451 East Street",
            "address2": "",
            "city": "Huntington",
            "state": "VT",
            "postalCode": "05462",
            "coordinates": {
                "lat": 44.3194104,
                "lng": -72.9844982
            }
        },
        {
            "address1": "9209 Eupora Court",
            "address2": "",
            "city": "Jeffersontown",
            "state": "KY",
            "postalCode": "40299",
            "coordinates": {
                "lat": 38.1970417,
                "lng": -85.58631430000001
            }
        },
        {
            "address1": "4 Conti Circle",
            "address2": "",
            "city": "Barre",
            "state": "VT",
            "postalCode": "05641",
            "coordinates": {
                "lat": 44.1731699,
                "lng": -72.4920951
            }
        },
        {
            "address1": "5264 Shafter Avenue",
            "address2": "",
            "city": "Oakland",
            "state": "CA",
            "postalCode": "94618",
            "coordinates": {
                "lat": 37.839058,
                "lng": -122.256035
            }
        },
        {
            "address1": "1630 Eton Way",
            "address2": "",
            "city": "Crofton",
            "state": "MD",
            "postalCode": "21114",
            "coordinates": {
                "lat": 39.008958,
                "lng": -76.69134199999999
            }
        },
        {
            "address1": "5244 West Port Au Prince Lane",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85306",
            "coordinates": {
                "lat": 33.622672,
                "lng": -112.17283
            }
        },
        {
            "address1": "1835 Pointer Lane",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.08606899999999,
                "lng": -94.1187549
            }
        },
        {
            "address1": "107 Laurel Green Court",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31419",
            "coordinates": {
                "lat": 32.025628,
                "lng": -81.24673399999999
            }
        },
        {
            "address1": "7250 Urban Drive",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80005",
            "coordinates": {
                "lat": 39.827875,
                "lng": -105.133965
            }
        },
        {
            "address1": "12 Kane Road",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06040",
            "coordinates": {
                "lat": 41.764315,
                "lng": -72.51276
            }
        },
        {
            "address1": "4132 Northwest 57th Street",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73112",
            "coordinates": {
                "lat": 35.529164,
                "lng": -97.594155
            }
        },
        {
            "address1": "10774 West 54th Lane",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80002",
            "coordinates": {
                "lat": 39.7963587,
                "lng": -105.11861
            }
        },
        {
            "address1": "6729 North 54th Avenue",
            "address2": "",
            "city": "Glendale",
            "state": "AZ",
            "postalCode": "85301",
            "coordinates": {
                "lat": 33.536068,
                "lng": -112.17458
            }
        },
        {
            "address1": "6483 West 76th Avenue",
            "address2": "",
            "city": "Arvada",
            "state": "CO",
            "postalCode": "80003",
            "coordinates": {
                "lat": 39.834927,
                "lng": -105.069802
            }
        },
        {
            "address1": "5732 Jean Drive",
            "address2": "",
            "city": "Union City",
            "state": "CA",
            "postalCode": "94587",
            "coordinates": {
                "lat": 37.580691,
                "lng": -122.082773
            }
        },
        {
            "address1": "8221 Surf Drive",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32408",
            "coordinates": {
                "lat": 30.1630986,
                "lng": -85.7845665
            }
        },
        {
            "address1": "9101 Vanguard Drive",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99507",
            "coordinates": {
                "lat": 61.1382426,
                "lng": -149.84756
            }
        },
        {
            "address1": "18713 Shilstone Way",
            "address2": "",
            "city": "Edmond",
            "state": "OK",
            "postalCode": "73012",
            "coordinates": {
                "lat": 35.6618776,
                "lng": -97.53426999999999
            }
        },
        {
            "address1": "51185 Helmsman Street",
            "address2": "",
            "city": "Kenai",
            "state": "AK",
            "postalCode": "99611",
            "coordinates": {
                "lat": 60.509562,
                "lng": -151.265293
            }
        },
        {
            "address1": "128 East Oak Street",
            "address2": "#3",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40203",
            "coordinates": {
                "lat": 38.2342125,
                "lng": -85.7539867
            }
        },
        {
            "address1": "1222 Arcade Boulevard",
            "address2": "",
            "city": "Sacramento",
            "state": "CA",
            "postalCode": "95815",
            "coordinates": {
                "lat": 38.626122,
                "lng": -121.43861
            }
        },
        {
            "address1": "1405 Mercedes Avenue",
            "address2": "APARTMENT G",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32401",
            "coordinates": {
                "lat": 30.1738039,
                "lng": -85.6462091
            }
        },
        {
            "address1": "7024 Johnny Mercer Boulevard",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31410",
            "coordinates": {
                "lat": 32.022447,
                "lng": -80.969861
            }
        },
        {
            "address1": "3600 Pennsylvania Avenue",
            "address2": "#APT 6",
            "city": "Fremont",
            "state": "CA",
            "postalCode": "94536",
            "coordinates": {
                "lat": 37.5516245,
                "lng": -121.9872735
            }
        },
        {
            "address1": "312 North Cove Boulevard",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32401",
            "coordinates": {
                "lat": 30.1520433,
                "lng": -85.6500713
            }
        },
        {
            "address1": "3118 Sora Avenue",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40213",
            "coordinates": {
                "lat": 38.208849,
                "lng": -85.724113
            }
        },
        {
            "address1": "6420 Via Baron",
            "address2": "",
            "city": "Rancho Palos Verdes",
            "state": "CA",
            "postalCode": "90275",
            "coordinates": {
                "lat": 33.741162,
                "lng": -118.390767
            }
        },
        {
            "address1": "3321 Furman Boulevard",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40220",
            "coordinates": {
                "lat": 38.2134349,
                "lng": -85.640439
            }
        },
        {
            "address1": "98 Lincoln Street",
            "address2": "",
            "city": "Revere",
            "state": "MA",
            "postalCode": "02151",
            "coordinates": {
                "lat": 42.418115,
                "lng": -71.027503
            }
        },
        {
            "address1": "984 Greendale Avenue",
            "address2": "",
            "city": "Needham",
            "state": "MA",
            "postalCode": "02492",
            "coordinates": {
                "lat": 42.275811,
                "lng": -71.203287
            }
        },
        {
            "address1": "239 Eastern Avenue",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.0605438,
                "lng": -94.18373079999999
            }
        },
        {
            "address1": "1106 Commanders Way South",
            "address2": "",
            "city": "Annapolis",
            "state": "MD",
            "postalCode": "21409",
            "coordinates": {
                "lat": 39.033352,
                "lng": -76.447767
            }
        },
        {
            "address1": "4927 Alvin Sperry Road",
            "address2": "",
            "city": "Mount Juliet",
            "state": "TN",
            "postalCode": "37122",
            "coordinates": {
                "lat": 36.143557,
                "lng": -86.556877
            }
        },
        {
            "address1": "1632 North Lunsford Avenue",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.0827979,
                "lng": -94.137607
            }
        },
        {
            "address1": "2349 East Tall Oaks Drive",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72703",
            "coordinates": {
                "lat": 36.09277,
                "lng": -94.12758799999999
            }
        },
        {
            "address1": "2036 Hermitage Hills Drive",
            "address2": "",
            "city": "Gambrills",
            "state": "MD",
            "postalCode": "21054",
            "coordinates": {
                "lat": 38.9951,
                "lng": -76.65160999999999
            }
        },
        {
            "address1": "119 Oakland Street",
            "address2": "",
            "city": "Manchester",
            "state": "CT",
            "postalCode": "06042",
            "coordinates": {
                "lat": 41.7976637,
                "lng": -72.5199944
            }
        },
        {
            "address1": "37675 Fremont Boulevard",
            "address2": "#APT 42",
            "city": "Fremont",
            "state": "CA",
            "postalCode": "94536",
            "coordinates": {
                "lat": 37.555306,
                "lng": -122.003412
            }
        },
        {
            "address1": "3104 Southwest 46th Street",
            "address2": "",
            "city": "Oklahoma City",
            "state": "OK",
            "postalCode": "73119",
            "coordinates": {
                "lat": 35.4186213,
                "lng": -97.56952249999999
            }
        },
        {
            "address1": "2036 Gorgas Street",
            "address2": "",
            "city": "Montgomery",
            "state": "AL",
            "postalCode": "36106",
            "coordinates": {
                "lat": 32.357301,
                "lng": -86.276583
            }
        },
        {
            "address1": "11102 Little Rock Court",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40241",
            "coordinates": {
                "lat": 38.3214271,
                "lng": -85.5421016
            }
        },
        {
            "address1": "46 Deslauriers Street",
            "address2": "",
            "city": "Chicopee",
            "state": "MA",
            "postalCode": "01020",
            "coordinates": {
                "lat": 42.1855005,
                "lng": -72.5733508
            }
        },
        {
            "address1": "12 Red Fox Drive",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31419",
            "coordinates": {
                "lat": 31.981396,
                "lng": -81.22833899999999
            }
        },
        {
            "address1": "503 Blackwood Terrace Southeast",
            "address2": "",
            "city": "Calhoun",
            "state": "GA",
            "postalCode": "30701",
            "coordinates": {
                "lat": 34.459017,
                "lng": -84.914659
            }
        },
        {
            "address1": "2223 North Fernwood Court",
            "address2": "",
            "city": "Savannah",
            "state": "GA",
            "postalCode": "31404",
            "coordinates": {
                "lat": 32.029307,
                "lng": -81.06297099999999
            }
        },
        {
            "address1": "5444 Nicole Boulevard",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32404",
            "coordinates": {
                "lat": 30.238007,
                "lng": -85.562274
            }
        },
        {
            "address1": "849 East Victoria Street",
            "address2": "#204",
            "city": "Carson",
            "state": "CA",
            "postalCode": "90746",
            "coordinates": {
                "lat": 33.8673562,
                "lng": -118.2597713
            }
        },
        {
            "address1": "445 South Potomac Circle",
            "address2": "",
            "city": "Aurora",
            "state": "CO",
            "postalCode": "80012",
            "coordinates": {
                "lat": 39.705341,
                "lng": -104.830397
            }
        },
        {
            "address1": "201 East 9th Avenue",
            "address2": "#APT 000102",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99501",
            "coordinates": {
                "lat": 61.213897,
                "lng": -149.880633
            }
        },
        {
            "address1": "3500 15th Street Northeast",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20017",
            "coordinates": {
                "lat": 38.93311000000001,
                "lng": -76.98485699999999
            }
        },
        {
            "address1": "4981 Shirley Way",
            "address2": "",
            "city": "Livermore",
            "state": "CA",
            "postalCode": "94550",
            "coordinates": {
                "lat": 37.682649,
                "lng": -121.733308
            }
        },
        {
            "address1": "1300 Lemos Lane",
            "address2": "",
            "city": "Fremont",
            "state": "CA",
            "postalCode": "94539",
            "coordinates": {
                "lat": 37.546996,
                "lng": -121.951627
            }
        },
        {
            "address1": "5000 V Street Northwest",
            "address2": "",
            "city": "Washington",
            "state": "DC",
            "postalCode": "20007",
            "coordinates": {
                "lat": 38.917076,
                "lng": -77.09743399999999
            }
        },
        {
            "address1": "6823 Forsythe Drive",
            "address2": "",
            "city": "Panama City",
            "state": "FL",
            "postalCode": "32404",
            "coordinates": {
                "lat": 30.12332199999999,
                "lng": -85.571428
            }
        },
        {
            "address1": "1522 South 36th Street",
            "address2": "",
            "city": "Louisville",
            "state": "KY",
            "postalCode": "40211",
            "coordinates": {
                "lat": 38.231691,
                "lng": -85.8144612
            }
        },
        {
            "address1": "313 Lone Oak Drive",
            "address2": "",
            "city": "Norman",
            "state": "OK",
            "postalCode": "73071",
            "coordinates": {
                "lat": 35.221084,
                "lng": -97.405029
            }
        },
        {
            "address1": "970 Old Oak Road",
            "address2": "",
            "city": "Livermore",
            "state": "CA",
            "postalCode": "94550",
            "coordinates": {
                "lat": 37.653774,
                "lng": -121.796632
            }
        },
        {
            "address1": "1653 Brooks Avenue",
            "address2": "",
            "city": "Fayetteville",
            "state": "AR",
            "postalCode": "72701",
            "coordinates": {
                "lat": 36.04687,
                "lng": -94.17589699999999
            }
        },
        {
            "address1": "441 Merritt Avenue",
            "address2": "",
            "city": "Oakland",
            "state": "CA",
            "postalCode": "94610",
            "coordinates": {
                "lat": 37.8058663,
                "lng": -122.2493644
            }
        },
        {
            "address1": "632 North Pine Street",
            "address2": "",
            "city": "Anchorage",
            "state": "AK",
            "postalCode": "99508",
            "coordinates": {
                "lat": 61.22930220000001,
                "lng": -149.7938547
            }
        },
        {
        "address1": "1745 T Street Southeast",
        "address2": "",
        "city": "Washington",
        "state": "DC",
        "postalCode": "20020",
        "coordinates": {
            "lat": 38.867033,
            "lng": -76.979235
        }
    },
    {
        "address1": "6007 Applegate Lane",
        "address2": "",
        "city": "Louisville",
        "state": "KY",
        "postalCode": "40219",
        "coordinates": {
            "lat": 38.1343013,
            "lng": -85.6498512
        }
    },
    {
        "address1": "560 Penstock Drive",
        "address2": "",
        "city": "Grass Valley",
        "state": "CA",
        "postalCode": "95945",
        "coordinates": {
            "lat": 39.213076,
            "lng": -121.077583
        }
    },
    {
        "address1": "150 Carter Street",
        "address2": "",
        "city": "Manchester",
        "state": "CT",
        "postalCode": "06040",
        "coordinates": {
            "lat": 41.76556000000001,
            "lng": -72.473091
        }
    },
    {
        "address1": "2721 Lindsay Avenue",
        "address2": "",
        "city": "Louisville",
        "state": "KY",
        "postalCode": "40206",
        "coordinates": {
            "lat": 38.263793,
            "lng": -85.700243
        }
    },
    {
        "address1": "18 Densmore Drive",
        "address2": "",
        "city": "Essex",
        "state": "VT",
        "postalCode": "05452",
        "coordinates": {
            "lat": 44.492953,
            "lng": -73.101883
        }
    },
    {
        "address1": "637 Britannia Drive",
        "address2": "",
        "city": "Vallejo",
        "state": "CA",
        "postalCode": "94591",
        "coordinates": {
            "lat": 38.10476999999999,
            "lng": -122.193849
        }
    },
    {
        "address1": "5601 West Crocus Drive",
        "address2": "",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85306",
        "coordinates": {
            "lat": 33.6152469,
            "lng": -112.179737
        }
    },
    {
        "address1": "5403 Illinois Avenue",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37209",
        "coordinates": {
            "lat": 36.157077,
            "lng": -86.853827
        }
    },
    {
        "address1": "8821 West Myrtle Avenue",
        "address2": "",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85305",
        "coordinates": {
            "lat": 33.5404296,
            "lng": -112.2488391
        }
    },
    {
        "address1": "2203 7th Street Road",
        "address2": "",
        "city": "Louisville",
        "state": "KY",
        "postalCode": "40208",
        "coordinates": {
            "lat": 38.218107,
            "lng": -85.779006
        }
    },
    {
        "address1": "6463 Vrain Street",
        "address2": "",
        "city": "Arvada",
        "state": "CO",
        "postalCode": "80003",
        "coordinates": {
            "lat": 39.814056,
            "lng": -105.046913
        }
    },
    {
        "address1": "87 Horseshoe Drive",
        "address2": "",
        "city": "West Windsor",
        "state": "VT",
        "postalCode": "05037",
        "coordinates": {
            "lat": 43.4731793,
            "lng": -72.4967532
        }
    },
    {
        "address1": "60 Desousa Drive",
        "address2": "",
        "city": "Manchester",
        "state": "CT",
        "postalCode": "06040",
        "coordinates": {
            "lat": 41.7409259,
            "lng": -72.5619104
        }
    },
    {
        "address1": "4 Old Colony Way",
        "address2": "",
        "city": "Yarmouth",
        "state": "MA",
        "postalCode": "02664",
        "coordinates": {
            "lat": 41.697168,
            "lng": -70.189992
        }
    },
    {
        "address1": "314 South 17th Street",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37206",
        "coordinates": {
            "lat": 36.1719075,
            "lng": -86.740228
        }
    },
    {
        "address1": "1649 Timberridge Court",
        "address2": "",
        "city": "Fayetteville",
        "state": "AR",
        "postalCode": "72704",
        "coordinates": {
            "lat": 36.084563,
            "lng": -94.206082
        }
    },
    {
        "address1": "5461 West Shades Valley Drive",
        "address2": "",
        "city": "Montgomery",
        "state": "AL",
        "postalCode": "36108",
        "coordinates": {
            "lat": 32.296422,
            "lng": -86.34280299999999
        }
    },
    {
        "address1": "629 Debbie Drive",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37076",
        "coordinates": {
            "lat": 36.208114,
            "lng": -86.58621199999999
        }
    },
    {
        "address1": "22572 Toreador Drive",
        "address2": "",
        "city": "Salinas",
        "state": "CA",
        "postalCode": "93908",
        "coordinates": {
            "lat": 36.602449,
            "lng": -121.699071
        }
    },
    {
        "address1": "3034 Mica Street",
        "address2": "",
        "city": "Fayetteville",
        "state": "AR",
        "postalCode": "72704",
        "coordinates": {
            "lat": 36.0807929,
            "lng": -94.2066449
        }
    },
    {
        "address1": "3729 East Mission Boulevard",
        "address2": "",
        "city": "Fayetteville",
        "state": "AR",
        "postalCode": "72703",
        "coordinates": {
            "lat": 36.0919353,
            "lng": -94.10654219999999
        }
    },
    {
        "address1": "5114 Greentree Drive",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37211",
        "coordinates": {
            "lat": 36.0618539,
            "lng": -86.738508
        }
    },
    {
        "address1": "3466 Southview Avenue",
        "address2": "",
        "city": "Montgomery",
        "state": "AL",
        "postalCode": "36111",
        "coordinates": {
            "lat": 32.341227,
            "lng": -86.2846859
        }
    },
    {
        "address1": "1513 Cathy Street",
        "address2": "",
        "city": "Savannah",
        "state": "GA",
        "postalCode": "31415",
        "coordinates": {
            "lat": 32.067416,
            "lng": -81.125331
        }
    },
    {
        "address1": "600 West 19th Avenue",
        "address2": "APT B",
        "city": "Anchorage",
        "state": "AK",
        "postalCode": "99503",
        "coordinates": {
            "lat": 61.203115,
            "lng": -149.894107
        }
    },
    {
        "address1": "1208 Elkader Court North",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37013",
        "coordinates": {
            "lat": 36.080049,
            "lng": -86.60116099999999
        }
    },
    {
        "address1": "210 Green Road",
        "address2": "",
        "city": "Manchester",
        "state": "CT",
        "postalCode": "06042",
        "coordinates": {
            "lat": 41.7909099,
            "lng": -72.51195129999999
        }
    },
    {
        "address1": "49548 Road 200",
        "address2": "",
        "city": "O'Neals",
        "state": "CA",
        "postalCode": "93645",
        "coordinates": {
            "lat": 37.153463,
            "lng": -119.648192
        }
    },
    {
        "address1": "81 Seaton Place Northwest",
        "address2": "",
        "city": "Washington",
        "state": "DC",
        "postalCode": "20001",
        "coordinates": {
            "lat": 38.9149499,
            "lng": -77.01170259999999
        }
    },
    {
        "address1": "1267 Martin Street",
        "address2": "#203",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37203",
        "coordinates": {
            "lat": 36.1404897,
            "lng": -86.7695179
        }
    },
    {
        "address1": "7431 Candace Way",
        "address2": "#1",
        "city": "Louisville",
        "state": "KY",
        "postalCode": "40214",
        "coordinates": {
            "lat": 38.142768,
            "lng": -85.7717132
        }
    },
    {
        "address1": "1407 Walden Court",
        "address2": "",
        "city": "Crofton",
        "state": "MD",
        "postalCode": "21114",
        "coordinates": {
            "lat": 39.019306,
            "lng": -76.660653
        }
    },
    {
        "address1": "5906 Milton Avenue",
        "address2": "",
        "city": "Deale",
        "state": "MD",
        "postalCode": "20751",
        "coordinates": {
            "lat": 38.784451,
            "lng": -76.54125499999999
        }
    },
    {
        "address1": "74 Springfield Street",
        "address2": "B",
        "city": "Agawam",
        "state": "MA",
        "postalCode": "01001",
        "coordinates": {
            "lat": 42.0894922,
            "lng": -72.6297558
        }
    },
    {
        "address1": "2905 Stonebridge Court",
        "address2": "",
        "city": "Norman",
        "state": "OK",
        "postalCode": "73071",
        "coordinates": {
            "lat": 35.183319,
            "lng": -97.40210499999999
        }
    },
    {
        "address1": "20930 Todd Valley Road",
        "address2": "",
        "city": "Foresthill",
        "state": "CA",
        "postalCode": "95631",
        "coordinates": {
            "lat": 38.989466,
            "lng": -120.883108
        }
    },
    {
        "address1": "5928 West Mauna Loa Lane",
        "address2": "",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85306",
        "coordinates": {
            "lat": 33.6204899,
            "lng": -112.18702
        }
    },
    {
        "address1": "802 Madison Street Northwest",
        "address2": "",
        "city": "Washington",
        "state": "DC",
        "postalCode": "20011",
        "coordinates": {
            "lat": 38.9582381,
            "lng": -77.0244287
        }
    },
    {
        "address1": "2811 Battery Place Northwest",
        "address2": "",
        "city": "Washington",
        "state": "DC",
        "postalCode": "20016",
        "coordinates": {
            "lat": 38.9256252,
            "lng": -77.0982646
        }
    },
    {
        "address1": "210 Lacross Lane",
        "address2": "",
        "city": "Westmore",
        "state": "VT",
        "postalCode": "05860",
        "coordinates": {
            "lat": 44.771005,
            "lng": -72.048664
        }
    },
    {
        "address1": "2010 Rising Hill Drive",
        "address2": "",
        "city": "Norman",
        "state": "OK",
        "postalCode": "73071",
        "coordinates": {
            "lat": 35.177281,
            "lng": -97.411869
        }
    },
    {
        "address1": "388 East Main Street",
        "address2": "",
        "city": "Burlington",
        "state": "VT",
        "postalCode": "05753",
        "coordinates": {
            "lat": 43.9727945,
            "lng": -73.1023187
        }
    },
    {
        "address1": "450 Kinhawk Drive",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37211",
        "coordinates": {
            "lat": 36.030927,
            "lng": -86.71949099999999
        }
    },
    {
        "address1": "131 Westerly Street",
        "address2": "",
        "city": "Manchester",
        "state": "CT",
        "postalCode": "06042",
        "coordinates": {
            "lat": 41.7906813,
            "lng": -72.53559729999999
        }
    },
    {
        "address1": "308 Woodleaf Court",
        "address2": "",
        "city": "Glen Burnie",
        "state": "MD",
        "postalCode": "21061",
        "coordinates": {
            "lat": 39.1425931,
            "lng": -76.6238441
        }
    },
    {
        "address1": "8502 Madrone Avenue",
        "address2": "",
        "city": "Louisville",
        "state": "KY",
        "postalCode": "40258",
        "coordinates": {
            "lat": 38.1286407,
            "lng": -85.8678042
        }
    },
    {
        "address1": "23 Sable Run Lane",
        "address2": "",
        "city": "Methuen",
        "state": "MA",
        "postalCode": "01844",
        "coordinates": {
            "lat": 42.759847,
            "lng": -71.157721
        }
    },
    {
        "address1": "716 Waller Road",
        "address2": "",
        "city": "Brentwood",
        "state": "TN",
        "postalCode": "37027",
        "coordinates": {
            "lat": 35.998892,
            "lng": -86.696529
        }
    },
    {
        "address1": "416 McIver Street",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37211",
        "coordinates": {
            "lat": 36.10436,
            "lng": -86.74411599999999
        }
    },
    {
        "address1": "1508 Massachusetts Avenue Southeast",
        "address2": "",
        "city": "Washington",
        "state": "DC",
        "postalCode": "20003",
        "coordinates": {
            "lat": 38.887255,
            "lng": -76.98318499999999
        }
    },
    {
        "address1": "5615 West Villa Maria Drive",
        "address2": "",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85308",
        "coordinates": {
            "lat": 33.650988,
            "lng": -112.180624
        }
    },
    {
        "address1": "3162 Martin Luther King Junior Boulevard",
        "address2": "#2",
        "city": "Fayetteville",
        "state": "AR",
        "postalCode": "72704",
        "coordinates": {
            "lat": 36.05233310000001,
            "lng": -94.2056987
        }
    },
    {
        "address1": "5306 Ritchie Highway",
        "address2": "",
        "city": "Baltimore",
        "state": "MD",
        "postalCode": "21225",
        "coordinates": {
            "lat": 39.221978,
            "lng": -76.614183
        }
    },
    {
        "address1": "109 Summit Street",
        "address2": "",
        "city": "Burlington",
        "state": "VT",
        "postalCode": "05401",
        "coordinates": {
            "lat": 44.4729749,
            "lng": -73.2026566
        }
    },
    {
        "address1": "816 West 19th Avenue",
        "address2": "",
        "city": "Anchorage",
        "state": "AK",
        "postalCode": "99503",
        "coordinates": {
            "lat": 61.203221,
            "lng": -149.898655
        }
    },
    {
        "address1": "172 Alburg Springs Road",
        "address2": "",
        "city": "Alburgh",
        "state": "VT",
        "postalCode": "05440",
        "coordinates": {
            "lat": 44.995827,
            "lng": -73.2201539
        }
    },
    {
        "address1": "159 Downey Drive",
        "address2": "A",
        "city": "Manchester",
        "state": "CT",
        "postalCode": "06040",
        "coordinates": {
            "lat": 41.7800126,
            "lng": -72.5754309
        }
    },
    {
        "address1": "125 John Street",
        "address2": "",
        "city": "Santa Cruz",
        "state": "CA",
        "postalCode": "95060",
        "coordinates": {
            "lat": 36.950901,
            "lng": -122.046881
        }
    },
    {
        "address1": "1101 Lotus Avenue",
        "address2": "",
        "city": "Glen Burnie",
        "state": "MD",
        "postalCode": "21061",
        "coordinates": {
            "lat": 39.191982,
            "lng": -76.6525659
        }
    },
    {
        "address1": "8376 Albacore Drive",
        "address2": "",
        "city": "Pasadena",
        "state": "MD",
        "postalCode": "21122",
        "coordinates": {
            "lat": 39.110409,
            "lng": -76.46565799999999
        }
    },
    {
        "address1": "491 Arabian Way",
        "address2": "",
        "city": "Grand Junction",
        "state": "CO",
        "postalCode": "81504",
        "coordinates": {
            "lat": 39.07548999999999,
            "lng": -108.474785
        }
    },
    {
        "address1": "12245 West 71st Place",
        "address2": "",
        "city": "Arvada",
        "state": "CO",
        "postalCode": "80004",
        "coordinates": {
            "lat": 39.8267078,
            "lng": -105.1366798
        }
    },
    {
        "address1": "80 North East Street",
        "address2": "#4",
        "city": "Holyoke",
        "state": "MA",
        "postalCode": "01040",
        "coordinates": {
            "lat": 42.2041219,
            "lng": -72.5977704
        }
    },
    {
        "address1": "4695 East Huntsville Road",
        "address2": "",
        "city": "Fayetteville",
        "state": "AR",
        "postalCode": "72701",
        "coordinates": {
            "lat": 36.0471975,
            "lng": -94.0946286
        }
    },
    {
        "address1": "310 Timrod Road",
        "address2": "",
        "city": "Manchester",
        "state": "CT",
        "postalCode": "06040",
        "coordinates": {
            "lat": 41.756758,
            "lng": -72.493501
        }
    },
    {
        "address1": "1364 Capri Drive",
        "address2": "",
        "city": "Panama City",
        "state": "FL",
        "postalCode": "32405",
        "coordinates": {
            "lat": 30.2207276,
            "lng": -85.6808795
        }
    },
    {
        "address1": "132 Laurel Green Court",
        "address2": "",
        "city": "Savannah",
        "state": "GA",
        "postalCode": "31419",
        "coordinates": {
            "lat": 32.0243075,
            "lng": -81.2468102
        }
    },
    {
        "address1": "6657 West Rose Garden Lane",
        "address2": "",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85308",
        "coordinates": {
            "lat": 33.676018,
            "lng": -112.201658
        }
    },
    {
        "address1": "519 West 75th Avenue",
        "address2": "#APT 000003",
        "city": "Anchorage",
        "state": "AK",
        "postalCode": "99518",
        "coordinates": {
            "lat": 61.15288690000001,
            "lng": -149.889133
        }
    },
    {
        "address1": "31353 Santa Elena Way",
        "address2": "",
        "city": "Union City",
        "state": "CA",
        "postalCode": "94587",
        "coordinates": {
            "lat": 37.593981,
            "lng": -122.059762
        }
    },
    {
        "address1": "8398 West Denton Lane",
        "address2": "",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85305",
        "coordinates": {
            "lat": 33.515353,
            "lng": -112.240812
        }
    },
    {
        "address1": "700 Winston Place",
        "address2": "",
        "city": "Anchorage",
        "state": "AK",
        "postalCode": "99504",
        "coordinates": {
            "lat": 61.215882,
            "lng": -149.737337
        }
    },
    {
        "address1": "232 Maine Avenue",
        "address2": "",
        "city": "Panama City",
        "state": "FL",
        "postalCode": "32401",
        "coordinates": {
            "lat": 30.1527033,
            "lng": -85.63207129999999
        }
    },
    {
        "address1": "1 Kempf Drive",
        "address2": "",
        "city": "Easton",
        "state": "MA",
        "postalCode": "02375",
        "coordinates": {
            "lat": 42.0505989,
            "lng": -71.08029379999999
        }
    },
    {
        "address1": "5811 Crossings Boulevard",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37013",
        "coordinates": {
            "lat": 36.0370847,
            "lng": -86.6413728
        }
    },
    {
        "address1": "5108 Franklin Street",
        "address2": "",
        "city": "Savannah",
        "state": "GA",
        "postalCode": "31405",
        "coordinates": {
            "lat": 32.034987,
            "lng": -81.121928
        }
    },
    {
        "address1": "913 Fallview Trail",
        "address2": "",
        "city": "Nashville",
        "state": "TN",
        "postalCode": "37211",
        "coordinates": {
            "lat": 36.02419100000001,
            "lng": -86.718305
        }
    },
    {
        "address1": "270 Chrissy's Court",
        "address2": "",
        "city": "Bristol",#added
        "state": "VT",
        "postalCode": "05443",
        "coordinates": {
            "lat": 44.1710043,
            "lng": -73.1065617
        }
    },
    {
        "address1": "130 Old Route 103",
        "address2": "",
        "city": "Chester",
        "state": "VT",
        "postalCode": "05143",
        "coordinates": {
            "lat": 43.224335,
            "lng": -72.54227399999999
        }
    },
    {
        "address1": "10826 Pointe Royal Drive",
        "address2": "",
        "city": "Bakersfield",
        "state": "CA",
        "postalCode": "93311",
        "coordinates": {
            "lat": 35.2930007,
            "lng": -119.1225908
        }
    },
    {
        "address1": "74 Ranch Drive",
        "address2": "",
        "city": "Montgomery",
        "state": "AL",
        "postalCode": "36109",
        "coordinates": {
            "lat": 32.383322,
            "lng": -86.235124
        }
    },
    {
        "address1": "6601 West Ocotillo Road",
        "address2": "",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85301",
        "coordinates": {
            "lat": 33.53433,
            "lng": -112.2011246
        }
    },
    {
        "address1": "19416 Barclay Road",
        "address2": "",
        "city": "Castro Valley",
        "state": "CA",
        "postalCode": "94546",
        "coordinates": {
            "lat": 37.70382,
            "lng": -122.091054
        }
    },
    {
        "address1": "1347 Blackwalnut Court",
        "address2": "",
        "city": "Annapolis",
        "state": "MD",
        "postalCode": "21403",
        "coordinates": {
            "lat": 38.936881,
            "lng": -76.475823
        }
    },
    {
        "address1": "1770 Colony Way",
        "address2": "",
        "city": "Fayetteville",
        "state": "AR",
        "postalCode": "72704",
        "coordinates": {
            "lat": 36.0867,
            "lng": -94.229754
        }
    },
    {
        "address1": "165 Saint John Street",
        "address2": "",
        "city": "Manchester",
        "state": "CT",
        "postalCode": "06040",
        "coordinates": {
            "lat": 41.7762171,
            "lng": -72.5410548
        }
    },
    {
        "address1": "2409 Research Boulevard",
        "address2": "",
        "city": "Fort Collins",
        "state": "CO",
        "postalCode": "80526",
        "coordinates": {
            "lat": 40.554586,
            "lng": -105.087852
        }
    },
    {
        "address1": "1903 Bashford Manor Lane",
        "address2": "",
        "city": "Louisville",
        "state": "KY",
        "postalCode": "40218",
        "coordinates": {
            "lat": 38.1977059,
            "lng": -85.675288
        }
    },
    {
        "address1": "8315 Surf Drive",
        "address2": "",
        "city": "Panama City Beach",
        "state": "FL",
        "postalCode": "32408",
        "coordinates": {
            "lat": 30.163458,
            "lng": -85.785449
        }
    },
    {
        "address1": "3301 Old Muldoon Road",
        "address2": "",
        "city": "Anchorage",
        "state": "AK",
        "postalCode": "99504",
        "coordinates": {
            "lat": 61.1908348,
            "lng": -149.7340096
        }
    },
    {
        "address1": "8800 Cordell Circle",
        "address2": "#APT 000003",
        "city": "Anchorage",
        "state": "AK",
        "postalCode": "99502",
        "coordinates": {
            "lat": 61.1409305,
            "lng": -149.9437822
        }
    },
    {
        "address1": "117 East Cook Avenue",
        "address2": "",
        "city": "Anchorage",
        "state": "AK",
        "postalCode": "99501",
        "coordinates": {
            "lat": 61.230336,
            "lng": -149.883795
        }
    },
    {
        "address1": "6231 North 67th Avenue",
        "address2": "#241",
        "city": "Glendale",
        "state": "AZ",
        "postalCode": "85301",
        "coordinates": {
            "lat": 33.5279666,
            "lng": -112.2022551
        }
    },
    {
        "address1": "8505 Waters Avenue",
        "address2": "#66",
        "city": "Savannah",
        "state": "GA",
        "postalCode": "31406",
        "coordinates": {
            "lat": 31.9901877,
            "lng": -81.1070672
        }
    },
    {
        "address1": "7 Underwood Place Northwest",
        "address2": "",
        "city": "Washington",
        "state": "DC",
        "postalCode": "20012",
        "coordinates": {
            "lat": 38.969351,
            "lng": -77.009722
        }
    },
    {
        "address1": "21950 Arnold Center Road",
        "address2": "",
        "city": "Carson",
        "state": "CA",
        "postalCode": "90810",
        "coordinates": {
            "lat": 33.8272706,
            "lng": -118.2302826
        }
    },
    {
        "address1": "1427 South Carolina Avenue Southeast",
        "address2": "",
        "city": "Washington",
        "state": "DC",
        "postalCode": "20003",
        "coordinates": {
            "lat": 38.886615,
            "lng": -76.9845349
        }
    },
    {
        "address1": "1420 Turtleback Trail",
        "address2": "",
        "city": "Panama City",
        "state": "FL",
        "postalCode": "32413",
        "coordinates": {
            "lat": 30.281084,
            "lng": -85.9677169
        }
    }
]

#seed the address table
100.times do
    index = rand(0..add.length-1)
    addresses = Address.new(
        type_of_address: addressType[rand(0..3)],
        status: status[rand(0..1)],
        entity: entity[rand(0..1)],
        number_and_street: add[index][:address1],
        # number_and_street: add[1][0],
        suite_or_apartment: rand(1..100),
        city: add[index][:city],
        postal_code: add[index][:postalCode],
        latitude: add[index][:coordinates][:lat],
        longitude: add[index][:coordinates][:lng],
        country: "United States",
        notes: Faker::Measurement.metric_height
    )
    addresses.save!
end 




# userID = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50]


buildingDetail = [
    {
        "information": "Type",
        "value": "Commercial",
    },
    {
        "information": "Type",
        "value": "Residential",
    },
    {
        "information": "Construction year",
        "value": "1969",
    },
    {
        "information": "Construction year",
        "value": "1948",
    },
    {
        "information": "Construction year",
        "value": "1989",
    },
] 

typeBuilding = ["Residential", "Commercial", "Corporate", "Hybrid"]
elevatorModel = ["Standard", "Premium", "Excelium"]


eCounter = 0
cCounter = 0
batCounter = 0
bcounter = 0
i = 10
j=1

#create the customers
8.times do
    
    eMail = Faker::Internet.email


    users = AdminUser.new(
        email:eMail,
        password:"password",
        password_confirmation:"password"
    )
    users.save

    # creates a role variable with a 1 in 9 chance of being 0 the other value is 1
    role = rand(0..3)
    if role > 0
        role = 1
    end

    # admin user id 10 will always have role 0
    if i == 10
        role = 0
    end

    # generate users dependant on the role variable ( 1 will be a customer 0 will be an employee )
    if role == 1
        technicalAthorityID = Employee.where(title: "technician").last[:id]
        addressID = rand(1..100)
        companyName = Faker::Company.name
        customerDate = Faker::Date.between(from: '1976-01-01', to: '2020-10-20')
        customers = Customer.new(
            #user_id: userID[i],
            customer_creation_date: customerDate,
            company_name: companyName,
            company_headquarter_address: Address.find(addressID)[:number_and_street].to_s + " " + Address.find(addressID)[:suite_or_apartment].to_s + " " + Address.find(addressID)[:city].to_s + " " + Address.find(addressID)[:postal_code].to_s + " " + Address.find(addressID)[:country].to_s,
            
            full_name_company_contact: Faker::Name.name,
            address_id: addressID,
            company_contact_phone: Faker::PhoneNumber.cell_phone,
            email_company_contact: eMail,
            admin_user_id: i,
            company_description: Faker::Company.industry,

            employee_id:technicalAthorityID,
            full_name_service_technical_authority: Employee.find(technicalAthorityID)[:first_name] + " " + Employee.find(technicalAthorityID)[:last_name] , 
        
            technical_authority_phone: Employee.find(technicalAthorityID)[:phone_number],
            technical_manager_email: Employee.find(technicalAthorityID)[:email]
        )

        customers.save
        
        #buildings are nested in their customer
        b = rand(1..5)
        b.times do
            addressID2 = rand(1..100)
            administrator = rand(1..7)
            buildings = Building.new(
                address_id: addressID2,
                address_of_the_building: Address.find(addressID2)[:number_and_street], #+ " " + Address.find(addressID2)[:suite_or_apartment] + " " + Address.find(addressID2)[:city] + " " + Address.find(addressID2)[:postal_code] + " " + Address.find(addressID2)[:country],
                full_name_of_the_building_administrator: Employee.find(administrator)[:first_name] + " " + Employee.find(administrator)[:last_name],
                email_of_the_administrator_of_the_building: Employee.find(administrator)[:email],
                phone_number_of_the_building_administrator: Employee.find(administrator)[:phone_number],
                full_name_of_the_technical_contact_for_the_building: Employee.find(technicalAthorityID)[:first_name] + " " + Employee.find(technicalAthorityID)[:last_name],
                technical_contact_email_for_the_building: Employee.find(technicalAthorityID)[:email],
                technical_contact_phone_for_the_building: Employee.find(technicalAthorityID)[:phone_number],
                customer_id: j
            )
            buildings.save
            bcounter += 1

            arrayIndex = rand(0..buildingDetail.length-1)
            if Building.last[:id] == bcounter
                    
                buildingDetails = BuildingDetail.new(
                    building_id: bcounter,
                    information_key: buildingDetail[arrayIndex][:information],
                    value: buildingDetail[arrayIndex][:value],
                    customer_id: j
                )
                buildingDetails.save
                

                commissionDate = Faker::Date.between(from: customerDate, to: '2020-10-20')        
                contactEmail = eMail
                e = rand(1..5)
                c = rand(1..5)
                bat = rand(1..3)
                Btype = rand(0..3)
                EModel = elevatorModel[rand(0..2)]
                appartements = 0
                companies = 0
                buisinesses = 0
                occupants = 0
                activity = 0
                cost = 0
                elevators = bat * c * e


                if typeBuilding[Btype] == "Residential"
                    appartements = rand(10..300)

                elsif typeBuilding[Btype] == "Commercial" 
                    buisinesses = rand(3..50)
                            
                else 
                    occupants = rand(0..300)
                    activity = rand(6..16)
                    companies = rand(3..50)
                end

            

                if EModel == "Standard"
                    cost = 7565
                    inst = 0.1
                elsif EModel == "Premium"
                    cost = 12345
                    inst = 0.13
                else
                    cost = 15400
                    inst = 0.16
                end


                #onequote was made per BUILDING

                quotes = Quote.new(
                    created_at:Faker::Date.between(from: '1976-01-01', to: customerDate) ,
                    company_name: companyName,
                    contact_email: eMail,
                    building_type:  typeBuilding[Btype],
                    no_of_appartments: appartements,
                    no_of_floors: rand(3..70),
                    no_of_basements: rand(0..5),
                    no_of_elevators_cages: bat * c * e,
                    no_of_parking_spaces: rand(0..200),
                    no_of_tenant_companies:companies ,
                    no_of_distinct_businesses:buisinesses ,
                    max_occupants_per_floors: occupants,
                    no_of_elevators: elevators,
                    product_grade: EModel,
                    elevator_cost: cost,
                    installation_cost: inst * cost * elevators,
                    total_cost: "$" + '%.2f' % ((elevators * inst * cost) + (elevators * cost)),
                    no_of_daily_hours_of_activity: activity,       

                )
                quotes.save
                print "total quote cost : "
                puts   (elevators * inst * cost) + (elevators * cost)




                #batterie is nested in buiding
                bat.times do
                    stat = rand(0..5)
                    if stat > 0
                        stat = 1
                    end
                    batteries = Battery.new(
                        building_id: bcounter,
                        type_of_building: typeBuilding[Btype],
                        status: status[stat],
                        employee_id: technicalAthorityID,
                        commissioning_date: commissionDate,
                        last_inspection_date: Faker::Date.between(from: '2019-10-20', to: '2020-10-20'),
                        operations_certificate: Faker::DrivingLicence.british_driving_licence,
                        information: Faker::Company.buzzword,
                        notes:  Faker::Company.catch_phrase,
                        customer_id: j
                    )
                    batteries.save
                    batCounter = batCounter + 1

                    # print "battery counter : "
                    # print batCounter
                    # print " last battery ID : "
                    # puts Battery.last[:id]

                    
                    if Battery.last[:id] == batCounter



                        #columns inside batteries
                        c.times do
                            stat = rand(0..5)
                            if stat > 0
                                stat = 1
                            end
                            columns = Column.new(
                                battery_id:batCounter,
                                type_of_building: typeBuilding[Btype],
                                number_of_floors_served: rand(5..20),
                                status: status[stat],
                                information: Faker::Company.buzzword,
                                notes: Faker::Company.catch_phrase,
                                customer_id: j
                            )
                            columns.save
                            cCounter = cCounter + 1
                            print "                     column counter : "
                            print cCounter
                            print " last column ID : "
                            puts Column.last[:id]

                            if Column.last[:id] == cCounter

                                #elevators inside Columns

                                e.times do
                                    stat = rand(0..5)
                                    if stat > 0
                                        stat = 1
                                    end

                                    commisioningDate = Faker::Date.between(from: Customer.find(j)[:customer_creation_date], to: '2020-10-20')

                                    elevators = Elevator.new(
                                        column_id: cCounter,
                                        serial_number:Faker::Number.number(digits: 10),
                                        model: EModel,
                                        type_of_building:Battery.find(batCounter)[:type_of_building].to_s,
                                        status:status[stat],
                                        commissioning_date:commisioningDate,
                                        last_inspection_date:Faker::Date.between(from: commisioningDate, to: '2020-10-20'),
                                        inspection_certificate:Faker::DrivingLicence.british_driving_licence,
                                        information:Faker::Company.buzzword,
                                        notes:Faker::Company.catch_phrase,
                                        customer_id: j

                                    )
                                    elevators.save
                                    eCounter = eCounter + 1
                                    print "                                 elevator counter : "
                                    print eCounter
                                    print " last elevator ID : "
                                    puts Elevator.last[:id]

                                end
                            else
                                if Column.last[:id] != nil
                                    cCounter = Column.last[:id]
                                end
                            end
                        end
                    else
                        if Battery.last[:id] != nil
                            batCounter = Battery.last[:id]
                        end
                    end
                end
            else
                if Building.last[:id] != nil
                    bcounter = Battery.last[:id]
                end
            end
        end
        j += 1
    else # role is 0 and creates an employee
        employees = Employee.new(
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            title: "technician",
            email: Faker::Internet.email,   
            admin_user_id: i,
            phone_number: Faker::PhoneNumber.cell_phone

        )
        employees.save
    end
    i = i+1

end

7.times do
    leads = Lead.new(
        contact_full_name: Faker::Name.name ,
        company_name: Faker::Company.name,
        email: Faker::Internet.email ,
        phone: Faker::PhoneNumber.cell_phone,
        project_name: Faker::Company.catch_phrase,
        project_description: Faker::Lorem.sentence,
        department: typeBuilding[rand(0..3)],
        message: Faker::Lorem.paragraphs,
        created_at: Faker::Date.between(from: '1976-01-01', to: '2020-10-20')
        # attached_file:Faker::Types.rb_string 


    )
    leads.save
end

30.times do
    intervention_start = Faker::Date.between(from: '2020-07-01', to: '2020-09-01')
    intervention_stop = Faker::Date.between(from: '2020-09-02', to: '2020-11-01')
    result = ["Success", "Failure", "Incomplete"]
    report = [Faker::Lorem.sentence,""]
    intervention_status = ["Pending", "InProgress", "Resumed"]
    results = result[rand(0..2)]
    reports = report[rand(0..1)]
    statusresult = ""
    if results == "Success"
        statusresult = "Complete"
    elsif results == "Failure"
        statusresult = "Interrupted"
    else
        statusresult = intervention_status[rand(0.2)]
    end
    if statusresult == "Pending"
        intervention_start = nil
        intervention_stop = nil
    end
    elevator_id = rand(Elevator.first[:id]..Elevator.last[:id])
    employee_id = rand(Employee.first[:id]..Employee.last[:id])
    column_id = rand(Column.first[:id]..Column.last[:id])
    battery_id = rand(Battery.first[:id]..Battery.last[:id])
    customer_id = rand(Customer.first[:id]..Customer.last[:id])
    building_id = rand(Building.first[:id]..Building.last[:id])
    author = rand(Employee.first[:id]..Employee.last[:id])
    Intervention.create(author:author,building_id:building_id,customer_id:customer_id,battery_id:battery_id,column_id:column_id,employee_id:employee_id,intervention_start:intervention_start, intervention_stop: intervention_stop, result: results, report: reports, status: statusresult, elevator_id: elevator_id)
end
