require './app.rb'

feature 'Attack' do
  scenario 'attacks player2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Tom attacked Jerry!')
  end

  scenario 'reduce Player 2 HP by 10' do
   sign_in_and_play
   click_button('Attack')
   expect(page).to have_content '50/60 HP'
 end
end
