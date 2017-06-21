def sign_in_and_play
  visit('/')
  fill_in('name1', with:'Tom')
  fill_in('name2', with:'Jerry')
  click_button('Submit')
  visit('/play')
end
