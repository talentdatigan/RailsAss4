require 'rails_helper'

RSpec.describe "pokedexes/index", type: :view do
  before(:each) do
    assign(:pokedexes, [
      Pokedex.create!(
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
      ),
      Pokedex.create!(
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
      )
    ])
  end

  it "renders a list of pokedexes" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type 1".to_s, :count => 2
    assert_select "tr>td", :text => "Type 2".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
