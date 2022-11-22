class Category < ApplicationRecord
  validates :name, length: { minimum: 1, maximum: 20 }
  validates :icon, presence: true

  belongs_to :user, foreign_key: 'author_id'
  has_and_belongs_to_many :expenses

  def total_exp
    total = 0
    @cats = expenses
    @cats.each do |cat|
      total = total + cat.amount
    end
    total
  end

  
end
