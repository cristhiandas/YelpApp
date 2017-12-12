require 'rails_helper'

feature 'Post a Review' do
  scenario 'can visit the page' do
    visit('/reviews/new')
    expect(page).to have_content('Post a Review')
  end
end
