class User < ApplicationRecord
    has_many :expenses, foreign_key: 'author_id'
    has_many :categories
end
