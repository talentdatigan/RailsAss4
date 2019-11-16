require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :addresses => nil,
      :credit_cards => nil
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input[name=?]", "profile[addresses_id]"

      assert_select "input[name=?]", "profile[credit_cards_id]"
    end
  end
end
