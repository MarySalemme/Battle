require './app.rb'

feature "enter player names" do
  scenario "on starting game" do
    sign_in_and_play
    expect(page).to have_content('Tom')
    expect(page).to have_content('Jerry')
  end
end
