require 'rails_helper'

RSpec.describe "restaurants/new.html.erb" do
  it "has content New Restaurant" do
    visit('/restaurants/new')
    expect(page).to have_content('New Restaurant')
  end
end
