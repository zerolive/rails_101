require 'rails_helper'
require 'capybara'

describe 'Notes' do
  it 'can be created' do
    visit '/notes/new'

    fill_in('note_text', with: 'Test note')
    click_on('submit')

    expect(page).to have_content('Test note')
  end

  it 'can be updated' do
    note = Note.new(text: 'New note')
    note.save
    visit '/'

    click_on('edit')
    fill_in('note_text', with: 'Update note')
    click_on('submit')

    expect(page).to have_content('Update note')
  end
end
