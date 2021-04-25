class Muscle < ApplicationRecord
  has_many :muscle_exercises
  has_many :exercises, through: :muscle_exercises

end
