require 'elevator_media'

describe ElevatorMedia::Streamer do
    describe "getContent" do 
        context "Return all stats" do
            it 'returns integer on status for a province' do
                expect(ElevatorMedia::Streamer.getContent("confirmed","quebec")).to be_kind_of(String) 
            end 
            it 'returns integer on status for a province' do
                expect(ElevatorMedia::Streamer.getContent("death", "quebec")).to be_kind_of(String) 
            end 
        end
    end
end

