class Category < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  has_many :category_expenses
  has_many :expenses, through: :category_expenses
end
