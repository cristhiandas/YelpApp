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

  scenario 'Fill in Review Textarea' do
    expect(page).to have_field(type: 'textarea', name: 'review[comments]')
  end

  scenario 'Has submit button' do
    expect(page).to have_button('Submit')
  end

  scenario 'filling in form and submitting creates a new Review' do
    fill_in('review[author]', with: 'Lewis')
    fill_in('review[email]', with: 'lewis@twin.com')
    choose(id: 'review_rating_1')
    fill_in('review[comments]', with: 'Great restaurant')
    click_button('Submit')
    expect(Review.all.length).to eq(1)
  end
end
