require 'rails_helper'

RSpec.describe "jobs/index", type: :view do
  before(:each) do
    assign(:jobs, [
      Job.create!(
        :name => "Name",
        :description => "MyText",
        :author => "Author",
        :category => 1
      ),
      Job.create!(
        :name => "Name",
        :description => "MyText",
        :author => "Author",
        :category => 1
      )
    ])
  end

  it "renders a list of jobs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
