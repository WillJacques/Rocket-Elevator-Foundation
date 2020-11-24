require 'uri'
require 'net/http'
require 'openssl'
require 'json'

module ElevatorMedia
    class Streamer

        def self.getContent(status, province)
            @response = ""

            if status == nil && province == nil
                @response = "<h2>Infos are nil</h2>"
                return @response
            end

            if status == "" || province == "" 
                @response = "<h2>Please select all infos required</h2>"
                return @response
            end

            if @response == ""

                response = get_covid_stats_from_web(status, province)

                parsed_json = JSON.parse(response.body)
                number_of_case = parsed_json[0]["#{status}"]
                capitalized_province = province.capitalize

                @response = "<h2>#{capitalized_province} has #{number_of_case} #{status} cases.</h2>"
                return @response
            end
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

    end
end