require 'rails_helper'

RSpec.feature 'Category', type: :feature do

    # it 'Can get loggin  pagg' do
    #     visit '/users/sign_in'
    #     puts page.body
    # end


    before(:each) do
        @user = User.create!(name: 'Acibo', email: 'mama@andibo.com', password: '123456', password_confirmation: '123456')
        sign_in @user
        # puts page.body
    end


    it 'creates a category' do
        visit '/categories'
        puts page.body

        # click_link 'New category'
        # expect(current_path).to eq(new_category_path)


        # fill_in 'category_name', with: 'Games'
        # click_button 'Create Category'
        # expect(page).to have_content 'Games'
    end

end