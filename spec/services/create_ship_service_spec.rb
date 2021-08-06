 require 'rails_helper'

RSpec.describe ShipCreateService do
  subject(:service) { described_class.new }

  describe '#create' do
    context 'when service called' do
      VCR.use_cassette("get_ship") do

        let(:ship) { service.create }

        it 'creates new ship' do
          expect(ship).to be_truthy
          expect(ship.name).to eq 'Rhode Island sons'
          expect(ship.status).to eq 'arrived'
        end
      end 
    end
  end
end