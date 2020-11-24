require 'elevator_media'

describe ElevatorMedia::Streamer do
    describe "getContent" do 
        context "Return province" do
            it 'returns string' do
                expect(ElevatorMedia::Streamer.getContent("quebec")).to be_kind_of(String) 
            end 
        end
    end
end

