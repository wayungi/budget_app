class Category < ApplicationRecord
  belongs_to :author
  has_many :category_expenses
  has_many :expenses, through: :category_expenses
end
