class RemoveActionFromWorkouts < ActiveRecord::Migration[7.0]
  def change
    remove_column :workouts, :action, :string
  end
end
