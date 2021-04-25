class Exercise < ApplicationRecord
  has_many :muscle_exercises
  has_many :muscles, through: :muscle_exercises
end 
