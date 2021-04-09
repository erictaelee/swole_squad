class CreateMuscleExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :muscle_exercises do |t|
      t.integer :muscle_id
      t.integer :exercise_id

      t.timestamps
    end
  end
end
