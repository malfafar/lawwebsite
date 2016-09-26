require 'rails_helper'

RSpec.describe "fees/new", type: :view do
  before(:each) do
    assign(:fee, Fee.new(
      :value => "9.99",
      :name => "MyString"
    ))
  end

  it "renders new fee form" do
    render

    assert_select "form[action=?][method=?]", fees_path, "post" do

      assert_select "input#fee_value[name=?]", "fee[value]"

      assert_select "input#fee_name[name=?]", "fee[name]"
    end
  end
end
