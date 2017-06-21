require './app.rb'

feature 'Attack' do
  scenario 'confirms the attack' do
    sign_in_and_play
    click_button('Attack')
    visit '/attack'
    expect(page).to have_content('Tom attacked Jerry!')
  end
end
