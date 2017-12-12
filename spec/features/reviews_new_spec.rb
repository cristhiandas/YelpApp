require 'rails_helper'

feature 'Post a Review' do

  before(:each) do
    visit('/reviews/new')
  end

  scenario 'can visit the page' do
    expect(page).to have_content('Post a Review')
  end

  scenario 'Filling in the name' do
    expect(page).to have_field(type: 'text', name: 'review[author]')
  end

  scenario 'Filling in the email' do
    expect(page).to have_field(type: 'email', name: 'review[email]')
  end

  scenario 'Filling in the rating' do
    expect(page).to have_field(id: 'review_rating_1')
  end
end
