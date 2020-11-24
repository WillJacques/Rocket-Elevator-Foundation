require 'uri'
require 'net/http'
require 'openssl'
require 'json'

module ElevatorMedia
    class Streamer
        # Method that gives the covid count from a status (deaths,confirmed,etc...) and a province (quebec, ontario, etc...)
        # https://rapidapi.com/kaushikvapiwala/api/covid1910/endpoints
        def self.getContent(status, province)
            response = ""

            if status == nil && province == nil
                response = "<h2>Infos are nil</h2>"
                return response
            end

            if status == "" || province == "" 
                response = "<h2>Please select all infos required</h2>"
                return response
            end

            if response == ""
                url = URI("https://covid1910.p.rapidapi.com/data/#{status}/country/canada/province/#{province}")
                response = fetch_data_from_url(url, 'covid1910.p.rapidapi.com')

                parsed_json = JSON.parse(response.body)
                number_of_case = parsed_json[0]["#{status}"].to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
                capitalized_province = province.capitalize

                response = "<p>has now #{number_of_case} #{status} cases.</p>"
                return response
            end

        end

        # Method that gives the covid count from a status (deaths,confirmed,etc...)
        # https://rapidapi.com/Gramzivi/api/covid-19-data/endpoints

        def self.getContent2(first_info)
            url = URI("https://covid-19-data.p.rapidapi.com/totals")
            response = fetch_data_from_url(url, 'covid-19-data.p.rapidapi.com')

            parsed_json = JSON.parse(response.body)
            number_of_confirmed_worldwide = parsed_json[0]["#{first_info}"].to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse

            response = "<p>#{number_of_confirmed_worldwide} confirmed cases</p>"
        end
        
        # Method that gives the temperature for a city
        # https://rapidapi.com/weatherapi/api/weatherapi-com/endpoints 

        def self.getContent3(city)
            url = URI("https://weatherapi-com.p.rapidapi.com/forecast.json?q=#{city}&days=3")

            response = fetch_data_from_url(url, 'weatherapi-com.p.rapidapi.com')
            parsed_json = JSON.parse(response.body)

            temperature_outside = parsed_json["current"]["temp_c"]
            temperature_text = parsed_json["current"]["condition"]["text"]
            temperature_icon = parsed_json["current"]["condition"]["icon"]

            response = "<p>Currently : #{temperature_outside}ºC and it's #{temperature_text} outside <img src='#{temperature_icon}'></p>"
        end

        # Method that takes an URL and gives back weather info from it

        def self.fetch_data_from_url(url, host)
            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE

            request = Net::HTTP::Get.new(url)
            request["x-rapidapi-key"] = ENV['RapidAPI_key']
            request["x-rapidapi-host"] = "#{host}"

            http.request(request)
        end
    end
end