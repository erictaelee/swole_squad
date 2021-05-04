class Api::CartedExercisesController < ApplicationController
  def index
    # @carted_exercises = CartedExercise.where(status: "carted", user_id: current_user.id)
    @carted_exercises = CartedExercise.where(status: "carted", user_id: current_user.id)
    # @carted_exercises = current_user.carted_exercises.where(status: "carted")
    render 'index.json.jb'
  end
  
  def create

    @carted_exercise = CartedExercise.new(
      user_id: current_user.id,
      muscle_id: params[:muscle_id],
      exercise_id: params[:exercise_id],
      status: "carted",
      
    )
    @carted_exercise.save!
    render 'show.json.jb'
  end
end
