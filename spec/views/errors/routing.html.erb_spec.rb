require 'rails_helper'

RSpec.describe "errors/routing.html.erb", type: :view do
  pending "add some examples to (or delete) #{__FILE__}"


feature 'invalid link' do 
scenario 'leads to error page' do
		visit('/*a')
		expect(page).to have_content('You may have mistyped the address or the page may have moved.')
    end
	end	

end
