require 'uri'
require 'net/http'
require 'openssl'
require 'json'

module ElevatorMedia
    class Streamer

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
                response = get_covid_stats_from_web(status, province)

                parsed_json = JSON.parse(response.body)
                number_of_case = parsed_json[0]["#{status}"]
                capitalized_province = province.capitalize

                response = "<p>has now #{number_of_case} #{status} cases.</p>"
                return response
            end
            puts response

        end

        def self.get_covid_stats_from_web(status, province)
            ##### FROM https://rapidapi.com/kaushikvapiwala/api/covid1910/endpoints #####

            url = URI("https://covid1910.p.rapidapi.com/data/#{status}/country/canada/province/#{province}")

            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE

            request = Net::HTTP::Get.new(url)
            request["x-rapidapi-key"] = '0df282d5dbmsh02fede9da7f3a2bp1f9b65jsnabd892a3474b'
            request["x-rapidapi-host"] = 'covid1910.p.rapidapi.com'

            http.request(request)

        end

        def self.getContent2(first_info)
            ##### FROM https://rapidapi.com/Gramzivi/api/covid-19-data/endpoints #####
            url = URI("https://covid-19-data.p.rapidapi.com/totals")

            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE

            request = Net::HTTP::Get.new(url)
            request["x-rapidapi-key"] = '0df282d5dbmsh02fede9da7f3a2bp1f9b65jsnabd892a3474b'
            request["x-rapidapi-host"] = 'covid-19-data.p.rapidapi.com'

            response = http.request(request)
            #puts response.read_body
            parsed_json = JSON.parse(response.body)
            number_of_confirmed_worldwide = parsed_json[0]["#{first_info}"].to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse

            response = "<p>#{number_of_confirmed_worldwide} confirmed cases</p>"
            puts response
            return response
        end

        def self.getContent3(city)
            ##### FROM https://rapidapi.com/weatherapi/api/weatherapi-com/endpoints #####
            url = URI("https://weatherapi-com.p.rapidapi.com/forecast.json?q=#{city}&days=3")

            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE

            request = Net::HTTP::Get.new(url)
            request["x-rapidapi-key"] = '0df282d5dbmsh02fede9da7f3a2bp1f9b65jsnabd892a3474b'
            request["x-rapidapi-host"] = 'weatherapi-com.p.rapidapi.com'

            response = http.request(request)
            #puts response.read_body
            parsed_json = JSON.parse(response.body)
            temperature_outside = parsed_json["current"]["temp_c"]
            temperature_text = parsed_json["current"]["condition"]["text"]
            temperature_icon = parsed_json["current"]["condition"]["icon"]

            response = "<p>Currently : #{temperature_outside}ºC and it's #{temperature_text} outside <img src='#{temperature_icon}'></p>"
            puts response

            return response
        end

        # def self.get_http(url)
        #     http = Net::HTTP.new(url.host, url.port)
        #     http.use_ssl = true
        #     http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        #     return http
        # end

        # def self.get_request(url)
        #     request = Net::HTTP::Get.new(url)
        #     request["x-rapidapi-key"] = '0df282d5dbmsh02fede9da7f3a2bp1f9b65jsnabd892a3474b'
        #     request["x-rapidapi-host"] = 'covid-19-data.p.rapidapi.com'
        #     return request
        # end
    end
end