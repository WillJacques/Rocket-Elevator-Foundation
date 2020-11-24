module ElevatorMedia
    class Streamer
        def self.getContent(input)
            require 'uri'
            require 'net/http'
            require 'openssl'
            require 'json'

            url = URI("https://covid1910.p.rapidapi.com/data/#{input}/country/canada/province/alberta")

            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE

            request = Net::HTTP::Get.new(url)
            request["x-rapidapi-key"] = '0df282d5dbmsh02fede9da7f3a2bp1f9b65jsnabd892a3474b'
            request["x-rapidapi-host"] = 'covid1910.p.rapidapi.com'

            response = http.request(request)
            puts response.read_body
            parsed_json = JSON.parse(response.body)
            puts parsed_json[0]["#{input}"]
            return parsed_json[0]["#{input}"]
        end
    end
end