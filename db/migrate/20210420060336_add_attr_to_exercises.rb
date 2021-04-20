class AddAttrToExercises < ActiveRecord::Migration[6.1]
  def change
    add_column :exercises, :muscle_primary, :integer
    add_column :exercises, :muscle_secondary, :integer
  end
end
