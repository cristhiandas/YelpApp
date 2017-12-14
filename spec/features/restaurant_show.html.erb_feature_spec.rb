require 'rails_helper'

feature 'Openning the page' do
  before(:each) do
    visit('/users/sign_up')
    fill_in(id: 'user_email', with: 'tom@tom.tom')
    fill_in(id: 'user_password', with: 'tom@tom.tom')
    fill_in(id: 'user_password_confirmation', with: 'tom@tom.tom')
    click_button('Sign up')
    visit '/restaurants/new'
    fill_in('restaurant[name]', with: 'Lewis')
    fill_in('restaurant[location]', with: 'Lewis')
    fill_in('restaurant[min_price]', with: '1')
    fill_in('restaurant[max_price]', with: '1')
    fill_in('restaurant[description]', with: 'Lewis')
    fill_in('restaurant[category]', with: 'Lewis')
    click_button(:value => 'Submit')
  end

  scenario 'it shows the restaurant information' do
    expect(page).to have_content('Restaurant Name: Lewis')
  end

  scenario 'It have a reviews section' do
    expect(page).to have_content('Leave a review')
    expect(page).to have_content('Review author')
    expect(page).to have_content('Review email')
    expect(page).to have_content('Review Rating')
    expect(page).to have_content('Comments')
  end

  scenario 'It displays all of the reviews for the restaurant' do
    fill_in('review[author]', with: 'Cristhian')
    fill_in('review[email]', with: 'cris@gmail.com')
    choose(id: 'review_rating_5')
    fill_in('review[comments]', with: 'I loved it!')
    click_button('Submit')
    expect(page).to have_content('Comment: I loved it!')
  end

  scenario 'It displays the average ratings of restaurant' do
    fill_in('review[author]', with: 'Cristhian')
    fill_in('review[email]', with: 'cris@gmail.com')
    choose(id: 'review_rating_5')
    fill_in('review[comments]', with: 'I loved it!')
    click_button('Submit')

    fill_in('review[author]', with: 'Cristhian')
    fill_in('review[email]', with: 'cris@gmail.com')
    choose(id: 'review_rating_3')
    fill_in('review[comments]', with: 'I loved it!')
    click_button('Submit')

    expect(page).to have_content('Average rating: 4.0')
  end

  scenario 'It displays the average ratings of restaurant as a float' do
    fill_in('review[author]', with: 'Cristhian')
    fill_in('review[email]', with: 'cris@gmail.com')
    choose(id: 'review_rating_5')
    fill_in('review[comments]', with: 'I loved it!')
    click_button('Submit')

    fill_in('review[author]', with: 'Cristhian')
    fill_in('review[email]', with: 'cris@gmail.com')
    choose(id: 'review_rating_2')
    fill_in('review[comments]', with: 'I loved it!')
    click_button('Submit')

    expect(page).to have_content('Average rating: 3.5')
  end

end
