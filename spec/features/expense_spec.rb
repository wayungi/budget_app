require 'rails_helper'

RSpec.feature 'Expenses', type: :feature do
  before(:each) do
    user = User.create(name: 'Bella', email: 'bella@example.com', password: '123456', password_confirmation: '123456')
    user.skip_confirmation!
    # @user.save
    login_as(user)
    @category = Category.create!(name: 'Game', icon: 'https://picsum.photos/200', user:)
  end

  it 'Navigates to new categories page' do
    visit "categories/#{@category.id}/expenses"
    expect(page).to have_content 'Add new expense'
  end

  it 'creates a new expense' do
    visit "categories/#{@category.id}/expenses"
    click_link 'Add new expense'
  end
end
