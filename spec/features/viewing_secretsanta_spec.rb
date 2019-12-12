feature "viewing secret santa" do
  scenario "visiting the index page" do
    visit ("/secret-santa-generator")
    expect(page).to have_field("Enter name")
  end
end
