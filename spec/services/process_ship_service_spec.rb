 require 'rails_helper'

RSpec.describe ProcessShipService do
  subject(:service) { described_class.new }
  let!(:ship) { create(:ship, status: :queue) }

  describe '#processing' do
    context 'update status' do
      VCR.use_cassette("ship_process") do

        let(:ship_queue) { service.processing }

        it 'process ship and update status to processed' do
          expect(ship_queue).to be_truthy
          ship.reload
          expect(ship.status).to eq 'processed'
        end
      end 
    end
  end
end