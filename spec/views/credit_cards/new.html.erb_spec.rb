require 'rails_helper'

RSpec.describe "credit_cards/new", type: :view do
  before(:each) do
    assign(:credit_card, CreditCard.new(
      :number => "MyString",
      :name_on_card => "MyString",
      :organisation => 'American Express'
      
    ))
  end

  it "renders new credit_card form" do
    render

    assert_select "form[action=?][method=?]", credit_cards_path, "post" do

      assert_select "input[name=?]", "credit_card[number]"


      assert_select "input[name=?]", "credit_card[name_on_card]"


    end
  end
end
