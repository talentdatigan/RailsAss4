require 'rails_helper'

RSpec.describe "credit_cards/index", type: :view do
  before(:each) do
    assign(:credit_cards, [
      CreditCard.create!(
        :number => "Number",
        :exp_date => "Exp Date",
        :name_on_card => "Name On Card",
        :organisation => "Organisation",
        :customer => nil
      ),
      CreditCard.create!(
        :number => "Number",
        :exp_date => "Exp Date",
        :name_on_card => "Name On Card",
        :organisation => "Organisation",
        :customer => nil
      )
    ])
  end

  it "renders a list of credit_cards" do
    render
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Exp Date".to_s, :count => 2
    assert_select "tr>td", :text => "Name On Card".to_s, :count => 2
    assert_select "tr>td", :text => "Organisation".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
