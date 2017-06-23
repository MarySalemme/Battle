def sign_in_and_play
  visit('/')
  fill_in('player1', with:'Tom')
  fill_in('player2', with:'Jerry')
  click_button('Enter game')
end

def kill_player_two
  sign_in_and_play
  click_button('Attack')
  click_button('Continue')
  click_button('Attack')
  click_button('Continue')
  click_button('Attack')
  click_button('Continue')
  click_button('Attack')
  click_button('Continue')
  click_button('Attack')
  click_button('Continue')
  click_button('Attack')
  click_button('Continue')
  click_button('Attack')
  click_button('Continue')
  click_button('Attack')
  click_button('Continue')
  click_button('Attack')
  click_button('Continue')
  click_button('Attack')
  click_button('Continue')
  click_button('Attack')
end
