require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :price => 1,
      :street => "MyString",
      :city => "MyString",
      :postcode => "MyString",
      :card_no => "MyString",
      :exp_date => "MyString",
      :name_on_card => "MyString",
      :organisation => "MyString",
      :address => nil,
      :credit_card => nil,
      :user => nil,
      :pokedex => nil
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input[name=?]", "order[price]"

      assert_select "input[name=?]", "order[street]"

      assert_select "input[name=?]", "order[city]"

      assert_select "input[name=?]", "order[postcode]"

      assert_select "input[name=?]", "order[card_no]"

      assert_select "input[name=?]", "order[exp_date]"

      assert_select "input[name=?]", "order[name_on_card]"

      assert_select "input[name=?]", "order[organisation]"

      assert_select "input[name=?]", "order[address_id]"

      assert_select "input[name=?]", "order[credit_card_id]"

      assert_select "input[name=?]", "order[user_id]"

      assert_select "input[name=?]", "order[pokedex_id]"
    end
  end
end
