require './app.rb'

feature 'Attack' do
  scenario 'Player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Tom attacked Jerry!')
  end

  scenario 'reduce Player 2 HP by 10' do
   sign_in_and_play
   click_button('Attack')
   expect(page).to have_content '50/60 HP'
 end

 scenario 'Player 2 attacks player 1' do
   sign_in_and_play
   click_button('Attack')
   click_button('Continue')
   click_button('Attack')
   expect(page).to have_content('Jerry attacked Tom!')
 end
end
