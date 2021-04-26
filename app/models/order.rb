class Order < ApplicationRecord
  belongs_to :user
  belongs_to :exercise
  has_many :carted_exercises
end
