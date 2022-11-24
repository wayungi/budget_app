class Expense < ApplicationRecord
  validates :name, :amount, :user, presence: true
  validates :amount, numericality: {greater_than: 0 }

  belongs_to :user, foreign_key: 'author_id'
  has_and_belongs_to_many :categories
end
