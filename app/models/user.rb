class User < ApplicationRecord
    validates :name, presence: true, length: { maximum: 20, minimum:1 }
    has_many :expenses, foreign_key: 'author_id'
    has_many :categories
end
