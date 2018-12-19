
feature 'homepage' do
  scenario 'will take user to homepage' do
    visit '/'
    expect(page).to have_content("Hello")
  end
end
