class WorkoutsController < ApplicationController
  def index
    workouts = Workout.all
    render json: workouts.as_json
  end

  def create
    workout = Workout.new(
      activity: params[:activity],
      tools_needed: params[:tools_needed],
      reps: params[:reps],
      image_url: params[:image_url],
    )
    workout.save
    render json: workout.as_json
  end

  def show
    workout = Workout.find_by(id: params[:id])
    render json: workout.as_json
  end

  def update
    workout = Workout.find_by(id: params[:id])
    workout.activity = params[:activity] || workout.activity
    workout.tools_needed = params[:tools_needed] || workout.tools_needed
    workout.reps = params[:reps] || workout.reps
    workout.image_url = params[:image_url] || workout.image_url
    workout.save
    render json = workout.as_json
  end

  def destroy
    workout = Workout.find_by(id: params[:id])
    workout.destroy
    render json: { message: "workout has been destroyed" }
  end
end
