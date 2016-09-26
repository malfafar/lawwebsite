require 'rails_helper'

RSpec.describe "private_informations/edit", type: :view do
  before(:each) do
    @private_information = assign(:private_information, PrivateInformation.create!(
      :text => "MyText",
      :title => ""
    ))
  end

  it "renders the edit private_information form" do
    render

    assert_select "form[action=?][method=?]", private_information_path(@private_information), "post" do

      assert_select "textarea#private_information_text[name=?]", "private_information[text]"

      assert_select "input#private_information_title[name=?]", "private_information[title]"
    end
  end
end
