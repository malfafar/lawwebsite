require 'rails_helper'
require 'shared_contexts'

RSpec.describe "Protocols", type: :request do

  include_context "api request authentication helper methods"
  include_context "api request global before and after hooks"

  let!(:admin) {  FactoryGirl.create(:admin_user)}
  
  describe "GET /protocols" do
    it "works!" do
      sign_in(admin)

      get protocols_path
      expect(response).to have_http_status(200)
    end
  end
end
