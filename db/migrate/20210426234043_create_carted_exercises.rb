class CreateCartedExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :carted_exercises do |t|
      t.integer :user_id
      t.integer :muscle_id
      t.integer :exercise_id
      t.string :status
      t.integer :order_id

      t.timestamps
    end
  end
end
