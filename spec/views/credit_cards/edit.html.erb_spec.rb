require 'rails_helper'

RSpec.describe "credit_cards/edit", type: :view do
  before(:each) do
    @credit_card = assign(:credit_card, CreditCard.create!(
      :number => "MyString",
      :exp_date => "MyString",
      :name_on_card => "MyString",
      :organisation => "MyString",
      :customer => nil
    ))
  end

  it "renders the edit credit_card form" do
    render

    assert_select "form[action=?][method=?]", credit_card_path(@credit_card), "post" do

      assert_select "input[name=?]", "credit_card[number]"

      assert_select "input[name=?]", "credit_card[exp_date]"

      assert_select "input[name=?]", "credit_card[name_on_card]"

      assert_select "input[name=?]", "credit_card[organisation]"

      assert_select "input[name=?]", "credit_card[customer_id]"
    end
  end
end
