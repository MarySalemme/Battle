feature "Testing infrastructure" do
  scenario "see homepage" do
      visit('/')
      expect(page).to have_content 'test infrastructure works!'
  end
end
