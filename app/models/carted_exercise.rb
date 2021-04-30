class CartedExercise < ApplicationRecord
  belongs_to :user
  belongs_to :exercise
  belongs_to :muscle
  belongs_to :order, optional: true
end
