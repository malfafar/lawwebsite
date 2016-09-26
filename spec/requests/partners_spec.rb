require 'rails_helper'
require 'shared_contexts'

RSpec.describe "Partners", type: :request do

  include_context "api request authentication helper methods"
  include_context "api request global before and after hooks"

  let!(:admin) {  FactoryGirl.create(:admin_user)}
  
  describe "GET /partners" do
    it "works!" do
      sign_in(admin)

      get partners_path
      expect(response).to have_http_status(200)
    end
  end
end
