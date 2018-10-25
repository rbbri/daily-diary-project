# As a user
# So that I can keep a daily diary
# I want to be able to add a new Diary Entry
feature 'User Story 1' do
  scenario 'a user visits the index and clicks add entry' do
    visit '/'
    click_button 'Add Entry'
    expect(page).to have_content 'Title'
    expect(page).to have_content 'Body'
    expect(page).to have_field 'title'
    expect(page).to have_field 'body'
  end
end
