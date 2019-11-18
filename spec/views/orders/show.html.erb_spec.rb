require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Postcode/)
    expect(rendered).to match(/Card No/)
    expect(rendered).to match(/Exp Date/)
    expect(rendered).to match(/Name On Card/)
    expect(rendered).to match(/Organisation/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
