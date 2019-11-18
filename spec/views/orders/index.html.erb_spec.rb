require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :price => 2,
        :street => "Street",
        :city => "City",
        :postcode => "Postcode",
        :card_no => "Card No",
        :exp_date => "Exp Date",
        :name_on_card => "Name On Card",
        :organisation => "Organisation",
        :address => nil,
        :credit_card => nil,
        :user => nil,
        :pokedex => nil
      ),
      Order.create!(
        :price => 2,
        :street => "Street",
        :city => "City",
        :postcode => "Postcode",
        :card_no => "Card No",
        :exp_date => "Exp Date",
        :name_on_card => "Name On Card",
        :organisation => "Organisation",
        :address => nil,
        :credit_card => nil,
        :user => nil,
        :pokedex => nil
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Postcode".to_s, :count => 2
    assert_select "tr>td", :text => "Card No".to_s, :count => 2
    assert_select "tr>td", :text => "Exp Date".to_s, :count => 2
    assert_select "tr>td", :text => "Name On Card".to_s, :count => 2
    assert_select "tr>td", :text => "Organisation".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
