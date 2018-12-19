feature 'homepage' do
  scenario 'will display a header' do
    visit '/'
    expect(page).to have_content('Welcome to our message app!')
  end
end
