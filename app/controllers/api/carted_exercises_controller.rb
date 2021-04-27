class Api::CartedExercisesController < ApplicationController
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
