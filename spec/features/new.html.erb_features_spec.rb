require 'rails_helper'

RSpec.describe "restaurants/new.html.erb" do
  describe 'when opening the page' do
    it "has content New Restaurant" do
      visit('/restaurants/new')
      expect(page).to have_content('New Restaurant')
    end

    it 'has a name field' do
      visit('/restaurants/new')
      expect(page).to  have_field(:type => 'text', :name => 'restaurant[name]')
    end

    it 'has a description field' do
      visit('/restaurants/new')
      expect(page).to  have_field(:type => 'textarea', :name => 'restaurant[description]')
    end

    it 'has a submit button' do
      visit('/restaurants/new')
      expect(page).to have_button(:value => 'Save Restaurant')
    end
  end
end
