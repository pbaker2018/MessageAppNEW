feature 'homepage' do
  scenario 'will display a header' do
    visit '/'
    expect(page).to have_content('Welcome to my message app!')
  end

  scenario 'user message with timestamp displays on homepage after submission' do
    visit '/'
    fill_in :message, with: 'Our first message!'
    click_button 'Submit'
    expect(page).to have_content('Our first message!')
    expect(page).to have_content(Time.now.strftime('%d-%m-%Y %H:%M:%S'))
  end
  
  scenario 'will display multiple messages with their timestamps' do
    visit '/'
    fill_in :message, with: 'Our first message!'
    click_button 'Submit'
    fill_in :message, with: 'Our second message!'
    click_button 'Submit'
    expect(page).to have_content('Our first message!')
    expect(page).to have_content('Our second message!')
  end
end
