feature 'homepage' do
  scenario 'will display a header' do
    visit '/'
    expect(page).to have_content('Welcome to your Message App!')
  end

  scenario 'user message with timestamp displays on homepage after submission' do
    visit '/'
    fill_in :message, with: 'Our test message!'
    fill_in :name, with: 'Pauline'
    click_button 'Submit'
    expect(page).to have_content('Our test message')
    expect(page).to have_content('Authored by: Pauline')
    expect(page).to have_content(Time.now.strftime('%d-%m-%Y %H:%M:%S'))
  end

  scenario 'will display multiple messages with their timestamps' do
    visit '/'
    fill_in :message, with: 'Our first message!'
    fill_in :name, with: 'William'
    click_button 'Submit'
    fill_in :message, with: 'Our second message!'
    fill_in :name, with: 'Liono'
    click_button 'Submit'
    expect(page).to have_content('Our first message!')
    expect(page).to have_content('Authored by: William')
    expect(page).to have_content('Our second message!')
    expect(page).to have_content('Authored by: Liono')
  end
end
