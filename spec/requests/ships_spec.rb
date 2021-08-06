require 'rails_helper'

RSpec.describe "ShipsController", type: :request do

  let!(:user) { create(:user) }
  
  before do
    sign_in user
  end

  let!(:ship_1) { create(:ship) }
  let!(:ship_2) { create(:ship) }

  describe "GET /index" do
    it 'returns all ships' do
      get '/ships'
      expect(response.status).to eq 200
    end
  end
end

