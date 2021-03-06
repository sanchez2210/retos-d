require 'rails_helper'

RSpec.describe "challenges/new", type: :view do
  before(:each) do
    assign(:challenge, Challenge.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new challenge form" do
    render

    assert_select "form[action=?][method=?]", challenges_path, "post" do

      assert_select "input[name=?]", "challenge[title]"

      assert_select "textarea[name=?]", "challenge[description]"
    end
  end
end
