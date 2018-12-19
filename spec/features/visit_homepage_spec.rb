feature 'homepage' do
  scenario 'will display a header' do
    visit '/'
    expect(page).to have_content('Welcome to our message app!')
  end

  scenario 'user message with timestamp displays on homepage after submission' do
    visit '/'
    fill_in :message, with: 'Our first message!'
    click_button "Submit"
    expect(page).to have_content('Our first message!')
  expect(page).to have_content(Time.now.strftime("%d-%m-%Y %H:%M:%S"))
  end
end
