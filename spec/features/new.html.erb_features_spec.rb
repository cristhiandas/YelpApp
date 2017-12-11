require 'rails_helper'

RSpec.describe "restaurants/new.html.erb" do
  describe 'when opening the page' do

    before(:each) do
      visit('/restaurants/new')
    end

    it "has content New Restaurant" do
      expect(page).to have_content('New Restaurant')
    end

    it 'has a name field' do
      expect(page).to  have_field(:type => 'text', :name => 'restaurant[name]')
    end

    it 'has a description field' do
      expect(page).to  have_field(:type => 'textarea', :name => 'restaurant[description]')
    end

    it 'has a submit button' do
      expect(page).to have_button(:value => 'Save Restaurant')
    end

    it 'has a location field' do
      expect(page).to have_field(:type => 'text', :name => 'restaurant[location]')
    end
  end
end
