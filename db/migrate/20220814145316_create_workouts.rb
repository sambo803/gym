class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :action
      t.string :tools_needed
      t.string :reps
      t.string :image_url

      t.timestamps
    end
  end
end
