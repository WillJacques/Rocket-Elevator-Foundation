module ElevatorMedia
    class Streamer
        def self.getContent(status, province)
            require 'uri'
            require 'net/http'
            require 'openssl'
            require 'json'

            url = URI("https://covid1910.p.rapidapi.com/data/#{status}/country/canada/province/#{province}")

            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE

            request = Net::HTTP::Get.new(url)
            request["x-rapidapi-key"] = 
            request["x-rapidapi-host"] = 'covid1910.p.rapidapi.com'

            response = http.request(request)
            puts response.read_body
            parsed_json = JSON.parse(response.body)
            number_of_case = parsed_json[0]["#{status}"]
            puts number_of_case
            integrated_text = "#{province} has #{number_of_case} #{status} cases"
            puts integrated_text
            return integrated_text
        end
    end
end