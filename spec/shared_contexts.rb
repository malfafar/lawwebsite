

RSpec.shared_context "api request global before and after hooks" do
  before(:each) do
    Warden.test_mode!
  end

  after(:each) do
    Warden.test_reset!
  end
end

RSpec.shared_context "api request authentication helper methods" do

  def sign_in(member)
    login_as(member, scope: :member)
  end

  def sign_out
    logout(:member)
  end
end
