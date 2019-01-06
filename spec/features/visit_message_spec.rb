feature 'message' do
  Message.destroy_all

  scenario 'will allow you to view the message you click on' do
    visit '/'
    fill_in :message, with: 'foo!'
    fill_in :name, with: 'Samia'
    click_button 'Submit'
    click_link('foo!')
    expect(page).to have_content('Your selected message')
  end

  scenario 'will allow you to delete or edit message or return to homepage' do
    visit '/'
    fill_in :message, with: 'bar'
    fill_in :name, with: 'Ava'
    click_button 'Submit'
    click_link('bar')
    expect(page).to have_button('Delete Message')
    expect(page).to have_button('Edit Message')
    expect(page).to have_button('Homepage')
  end
end
