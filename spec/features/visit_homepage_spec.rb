feature 'homepage' do
  scenario 'will display a header' do
    visit '/'
    expect(page).to have_content('Welcome to our message app!')
  end

  scenario 'user message will display on homepage after submission' do
    visit '/'
    fill_in :message, with: 'Our first message!'
    click_button "Submit"
    expect(page).to have_content('Our first message!')
  end
end
