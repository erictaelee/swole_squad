class Api::ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
    render "index.json.jb"
  end

  def show
    @exercise = Exercise.find_by(id: params[:id])
    render "show.json.jb"
  end
end
