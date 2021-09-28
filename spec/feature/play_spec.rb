require 'spec_helper'

feature 'playing a game' do
  before do
    visit '/'
    fill_in 'name', with: 'Ernest'
    click_button 'Submit'
  end

  scenario 'see the tool options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'choose a tool' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end

  scenario 'game choose its "Rock""' do
    click_button 'Rock'
    permutation = find(:css, "#computer").text.strip
    expect(computer_permutations).to include permutation
  end

  def computer_permutations
    [:rock, :paper, :scissors].collect { |tool| "Computer chose #{tool.to_s.capitalize}!"}
  end
end