require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:each) do
    @user = User.create!(name: 'Anania', email: 'anania@example.com', password: '123456')
  end

  it 'Is valid with valid attributes' do
    cat = Category.create(name: 'goal', icon: 'https://picsum.photos/200', user: @user)
    expect(cat).to be_valid
  end

  it 'Is invalid without a name' do
    cat = Category.create(name: 'goal', icon: 'https://picsum.photos/200', user: @user)
    cat.name = nil
    expect(cat).to_not be_valid
  end

  it 'Is invalid without an Icon' do
    cat = Category.create(name: 'goal', icon: 'https://picsum.photos/200', user: @user)
    cat.icon = nil
    expect(cat).to_not be_valid
  end
end
