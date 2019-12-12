feature "viewing secret santa" do
  scenario "visiting the index page" do
    visit ("/")
    expect(page).to have_content "Secret Santa app"
  end
end
