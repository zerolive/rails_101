require 'rails_helper'
require 'capybara'

describe 'Notes' do
  it 'can be created' do
    visit '/notes/new'

    fill_in('text', with: 'Test note')
    click_on('submit')

    expect(page).to have_content('Test note')
  end
end
