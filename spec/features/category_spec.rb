require 'rails_helper'

RSpec.feature 'Categories', type: :feature do
  before(:each) do
    user = User.create(name: 'Beno', email: 'sbeno@example.com', password: '123456', password_confirmation: '123456')
    user.skip_confirmation!
    login_as(user)
  end


  it 'creates a category' do
    visit '/categories'
    expect(page).to have_content 'Categories'
  end

  it 'navigates to new categories' do
    visit '/categories/new'
    expect(page).to have_content 'New category'
  end
end
