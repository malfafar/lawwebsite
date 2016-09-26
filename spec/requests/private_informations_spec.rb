require 'rails_helper'

RSpec.describe "PrivateInformations", type: :request do
  describe "GET /private_informations" do
    it "works! (now write some real specs)" do
      get private_informations_path
      expect(response).to have_http_status(200)
    end
  end
end
