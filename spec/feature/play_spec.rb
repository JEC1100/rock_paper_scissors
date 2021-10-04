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

  scenario 'game choose "Rock"' do
    click_button 'Rock'
    message = find(:css, "#game").text.strip
    expect([:rock, :paper, :scissors].map { |tool| "game chose #{tool.to_s.capitalize}!"}).to include message
  end

  scenario 'game chooses a random option' do
    srand(SEED)
    click_button 'Rock'
    expect(page).to have_content 'Game chose Scissors!'
  end
 
  context 'end game' do
    before do
      srand(SEED)
    end

    scenario 'I win' do
      click_button 'Rock'
      expect(page).to have_content 'You win!'
    end

    scenario 'I lose' do
      click_button 'Paper'
      expect(page).to have_content 'You lose!'
    end

    scenario 'I draw' do
      click_button 'Scissors'
      expect(page).to have_content 'You draw!'
    end
  end
end
