require 'elevator_media/streamer'

describe ElevatorMedia::Streamer do
    describe "getContent" do 
        context "Return Quebec Covid Count" do
            it 'returns integrated string on status for a province' do
                expect(ElevatorMedia::Streamer.getContent("confirmed","quebec")).to be_kind_of(String) 
            end 
            it 'returns "Please select all infos required" if one is not selected' do
                expect(ElevatorMedia::Streamer.getContent("death", "")).to eq("<h2>Please select all infos required</h2>") 
            end 
            it 'returns "Please select all infos required" if both are not selected' do
                expect(ElevatorMedia::Streamer.getContent("", "")).to eq("<h2>Please select all infos required</h2>") 
            end 
            it 'returns "Infos are nil" if both are NIL' do
                expect(ElevatorMedia::Streamer.getContent(nil, nil)).to eq("<h2>Infos are nil</h2>") 
            end 
        end
    end
    describe "getContent2" do 
        context "Return Worldwide Covid Count" do
            it 'returns confirmed cases integrated string' do
                expect(ElevatorMedia::Streamer.getContent2("confirmed")).to be_kind_of(String) 
            end 
        end
    end
    describe "getContent3" do 
        context "Return temperature from quebec" do
            it 'returns integrated string on temperature for a city' do
                expect(ElevatorMedia::Streamer.getContent3("quebec")).to be_kind_of(String) 
            end 
        end
    end

    describe "get_covid_stats_from_web" do

        # it "should http the right service" do
        #     net_http = double('net_hhtp')
        #     expect(Net::HTTP).to receive(:new).with("covid1910.p.rapidapi.com", 443) {net_http}
        #     expect(net_http).to receive(:use_ssl=).with(true)
        #     expect(net_http).to receive(:verify_mode=).with(OpenSSL::SSL::VERIFY_NONE)
        #     service_response = double('service_response')
        #     expect(Net::HTTP::Get).to receive(:new).with(URI("https://covid1910.p.rapidapi.com/data/whatever/country/canada/province/quebec")) {service_response}
        #     ElevatorMedia::Streamer.get_covid_stats_from_web('whatever', 'quebec')
        # end

        # require 'webmock/rspec'
        # WebMock.disable_net_connect!(allow_localhost: true)

    end    

end

