
feature "enter player names" do
  scenario "on starting game" do
    visit('/')
    fill_in('name_one', with: 'Jasper')
    fill_in('name_two', with: 'Mary')
    click_button("Submit")
    visit('/play')
    expect(page).to have_content('Jasper')
    expect(page).to have_content('Mary')
  end
end
