require 'rails_helper'
require 'spec_helper'

RSpec.describe "home/index.html.erb", type: :view do
  pending "add some examples to (or delete) #{__FILE__}"
end

feature 'Home page' do 
scenario 'has welcome text' do
		visit '/'
       expect(page).to have_content('Welcome to the Pokemon Market!')
    end
	end	


feature 'Home page' do 
scenario 'has sign in feature' do
		visit '/'
       expect(page).to have_content('Sign in')
    end
	end	

feature 'Home page' do 
scenario 'has sign out feature' do
		visit '/'
       expect(page).to have_content('Sign out')
    end
	end	

feature 'Home page' do 
scenario 'has sign up feature' do
		visit '/'
       expect(page).to have_content('Sign up')
    end
	end	