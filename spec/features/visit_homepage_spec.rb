feature 'homepage' do
  scenario 'will display a header' do
    visit '/'
    expect(page).to have_content('Welcome to our message app!')
  end

  scenario 'will display a form' do
    visit '/'
    expect(page).to have_field("message")
    click_button "Submit"
  end
end
