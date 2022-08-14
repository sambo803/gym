class AddActivityToWorkouts < ActiveRecord::Migration[7.0]
  def change
    add_column :workouts, :activity, :string
  end
end
