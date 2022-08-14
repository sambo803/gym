class WorkoutsController < ApplicationController
  def index
    workouts = Workout.all
    render json: workouts.as_json
  end

  def create
    workout = Workout.new(
      action: "burpees",
      reps: "3 x 15",
    )
    workout.save
    render json: workout.as_json
  end
end
