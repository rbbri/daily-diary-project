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

# So that I can identify my entry in future
# I want to give each Diary Entry a title
feature 'User Story 2' do
  scenario 'a user adds a new entry with a title' do
    visit '/'
    click_button 'Add Entry'
    fill_in 'title', with: 'Test entry'
    fill_in 'body', with: 'I hope this works'
    click_button 'Submit'
  end
end
