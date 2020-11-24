require 'elevator_media'

describe ElevatorMedia::Streamer do
    describe "getContent" do 
        context "Return all stats" do
            it 'returns integer on confirmed from alberta' do
                expect(ElevatorMedia::Streamer.getContent("confirmed")).to be_kind_of(Integer) 
            end 
            it 'returns integer on death from alberta' do
                expect(ElevatorMedia::Streamer.getContent("death")).to be_kind_of(Integer) 
            end 
        end
    end
end

