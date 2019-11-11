require 'rails_helper'

RSpec.describe "pokedexes/show", type: :view do
  before(:each) do
    @pokedex = assign(:pokedex, Pokedex.create!(
      :Index => 2,
      :Name => "Name",
      :Type_1 => "Type 1",
      :Type_2 => "Type 2",
      :Total => 3,
      :HP => 4,
      :Attack => 5,
      :Defense => 6,
      :Sp_Atk => 7,
      :Sp_Def => 8,
      :Speed => 9,
      :Generation => 10,
      :Legendary => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Type 1/)
    expect(rendered).to match(/Type 2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/false/)
  end
end
