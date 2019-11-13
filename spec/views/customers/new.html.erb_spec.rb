require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      :last_name => "MyString",
      :first_name => "MyString",
      :has_good_credit => 1,
      :paid => false
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input[name=?]", "customer[last_name]"

      assert_select "input[name=?]", "customer[first_name]"

      assert_select "input[name=?]", "customer[has_good_credit]"

      assert_select "input[name=?]", "customer[paid]"
    end
  end
end
