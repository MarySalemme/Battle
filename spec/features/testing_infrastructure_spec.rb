


feature "Testing infrastructure" do
  scenario "see homepage" do
      visit('/')
      expect(page).to have_content 'test infrastructure works!'
  end
end

feature "enter player names" do
  scenario "on starting game" do
    visit('/')
    fill_in('name_one', with: 'Jasper')
    fill_in('name_two', with: 'Mary')
    click_button("Submit")
    visit('/names')
    expect(page).to have_content('Jasper & Mary')
  end
end
