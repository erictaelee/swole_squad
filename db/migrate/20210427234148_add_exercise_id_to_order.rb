class AddExerciseIdToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :exercise_id, :integer
  end
end
