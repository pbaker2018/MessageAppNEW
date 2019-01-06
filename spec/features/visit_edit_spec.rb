feature 'edit' do
  scenario 'will allow you to delete the message you click on' do
    visit '/'
    fill_in :message, with: 'test!'
    fill_in :name, with: 'Pauline'
    click_button 'Submit'
    click_link('test!')
    click_button 'Delete Message'
    expect(page).not_to have_content('test!')
  end

  scenario 'will allow you to edit the message you click on' do
    visit '/'
    fill_in :message, with: 'Aquaman'
    fill_in :name, with: 'Akeem'
    click_button 'Submit'
    click_link('Aquaman')
    click_button 'Edit Message'
    fill_in :message, with: 'Aquaman Rocks!'
    fill_in :name, with: 'Fan'
    click_button 'Submit'
    expect(page).not_to have_content('Akeem')
    expect(page).to have_content('Aquaman Rocks!')
    expect(page).to have_content('Fan')
  end
end
