require 'rails_helper'

RSpec.describe "private_informations/show", type: :view do
  before(:each) do
    @private_information = assign(:private_information, PrivateInformation.create!(
      :text => "MyText",
      :title => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
