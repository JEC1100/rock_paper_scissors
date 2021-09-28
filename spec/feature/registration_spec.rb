require 'spec_helper'

feature 'registering player name' do
  scenario 'register and see my name' do 
    visit '/'
    fill_in 'name', with: 'Ernest'
    click_button 'Submit'
    expect(page).to have_content 'Ernest'
  end
end
