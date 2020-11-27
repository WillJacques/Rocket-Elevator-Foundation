require 'elevator_media/streamer'
require 'rails_helper'

RSpec.describe LeadsController do
    describe "search in lead ID #1" do
        it 'should get phone number from first lead' do
            firstlead = Lead.new(id: 1,phone: '1-732-667-6753').save
            expect(Lead.find(1)[:phone]).to eq('1-732-667-6753') 
            expect(Lead.count).to eq(1)
        end
    end
end