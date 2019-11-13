require 'rails_helper'

RSpec.describe "credit_cards/show", type: :view do
  before(:each) do
    @credit_card = assign(:credit_card, CreditCard.create!(
      :number => "Number",
      :exp_date => "Exp Date",
      :name_on_card => "Name On Card",
      :organisation => "Organisation",
      :customer => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/Exp Date/)
    expect(rendered).to match(/Name On Card/)
    expect(rendered).to match(/Organisation/)
    expect(rendered).to match(//)
  end
end
