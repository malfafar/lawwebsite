require 'rails_helper'

RSpec.describe "Laws", type: :request do
  describe "GET /laws" do
    it "works! (now write some real specs)" do
      get laws_path
      expect(response).to have_http_status(200)
    end
  end
end
