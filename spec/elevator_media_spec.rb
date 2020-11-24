require 'elevator_media'

describe ElevatorMedia::Streamer do
    describe "getContent" do 
        context "Return Zero" do
            it 'returns zero' do
                expect(ElevatorMedia::Streamer.getContent("")).to eq("")  
            end 
        end
        context "Return input" do
            it 'returns input' do
                expect(ElevatorMedia::Streamer.getContent("HTML")).to eq("HTML")  
            end 
        end
        context "Return input" do
            it 'returns input' do
                expect(ElevatorMedia::Streamer.getContent("HTML")).to eq("HTML")  
            end 
        end
    end
end

