require 'rails_helper'

feature 'shows review on page' do
  scenario 'after submitting a review it redirects to show the review' do
    visit('/reviews/new')
    fill_in('review[author]', with: 'Lewis')
    fill_in('review[email]', with: 'lewis@twin.com')
    choose(id: 'review_rating_1')
    fill_in('review[comments]', with: 'Great restaurant')
    click_button('Submit')
    expect(page).to have_content('Great restaurant')
  end
end
