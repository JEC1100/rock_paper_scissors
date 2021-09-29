require 'spec_helper'

feature 'playing a game' do
  SEED  = 221563
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

  scenario 'game chooses a random option' do
    srand(SEED)
    click_button 'Rock'
    expect(page).to have_content 'Computer chose Scissors!'
  end

  def computer_permutations
    [:rock, :paper, :scissors].collect { |tool| "Computer chose #{tool.to_s.capitalize}!"}
  end
end