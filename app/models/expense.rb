class Expense < ApplicationRecord
  belongs_to :author
  has_many :category_expenses
  has_many :categories, through: :category_expenses
end
