require 'elevator_media/streamer'
require 'rails_helper'

RSpec.describe InterventionsController, :type => :routing do
    describe "routes for Interventions" do
        it "routes /intervention to the intervention controller" do
            expect(get("/intervention")).
                to route_to("interventions#new")
        end
    end
end