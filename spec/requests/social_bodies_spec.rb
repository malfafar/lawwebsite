require 'rails_helper'

RSpec.describe "SocialBodies", type: :request do
  describe "GET /social_bodies" do
    it "works! (now write some real specs)" do
      get social_bodies_path
      expect(response).to have_http_status(200)
    end
  end
end
