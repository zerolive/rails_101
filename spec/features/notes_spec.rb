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
    create_a_note
    visit '/'

    click_on('edit')
    fill_in('note_text', with: 'Update note')
    click_on('submit')

    expect(page).to have_content('Update note')
  end

  it 'can be destroyed' do
    create_a_note
    visit '/'

    click_on('delete')

    expect(page).not_to have_content('New note')
  end

  def create_a_note
    note = Note.new(text: 'New note')
    note.save
  end
end
