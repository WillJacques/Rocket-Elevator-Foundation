require 'elevator_media/streamer'
require 'rails_helper'


RSpec.describe QuotesController, :type => :controller do
    describe "index" do
        context "on run" do
            it "displays all quotes from the database" do
                firstquote = Quote.create!(no_of_floors: 1)
                secondquote = Quote.create!(no_of_floors: 2)
                thirdquote = Quote.create!(no_of_floors: 3)
                expect(Quote.count).to eq(3)
            end
        end
    end
end

RSpec.describe QuotesController, :type => :controller do
    describe "GET new_quote" do
        it "has a 200 status code" do
            get :new
            expect(response.status).to eq(200)
        end
    end
end