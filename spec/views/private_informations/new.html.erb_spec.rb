require 'rails_helper'

RSpec.describe "private_informations/new", type: :view do
  before(:each) do
    assign(:private_information, PrivateInformation.new(
      :text => "MyText",
      :title => ""
    ))
  end

  it "renders new private_information form" do
    render

    assert_select "form[action=?][method=?]", private_informations_path, "post" do

      assert_select "textarea#private_information_text[name=?]", "private_information[text]"

      assert_select "input#private_information_title[name=?]", "private_information[title]"
    end
  end
end
