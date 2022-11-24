require 'rails_helper'

RSpec.describe Expense, type: :model do

    before(:each) do
        @user = User.create!(name: 'Anania', email: 'anania@example.com', password: '123456')
    end

    it 'Is valid with valid attributes' do
        expense = Expense.create(name:'attero', amount: 500, user:@user)
        expect(expense).to be_valid
    end

    it 'Is invalid without an Amount' do
        expense = Expense.create(name:'attero', amount: 500, user:@user)
        expense.amount = nil
        expect(expense).to_not be_valid
    end

    it 'Is invalid without a user' do
        expense = Expense.create(name:'attero', amount: 500, user:@user)
        expense.user = nil
        expect(expense).to_not be_valid
    end
end