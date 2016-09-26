require 'rails_helper'

RSpec.describe "private_informations/index", type: :view do
  before(:each) do
    assign(:private_informations, [
      PrivateInformation.create!(
        :text => "MyText",
        :title => ""
      ),
      PrivateInformation.create!(
        :text => "MyText",
        :title => ""
      )
    ])
  end

  it "renders a list of private_informations" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
