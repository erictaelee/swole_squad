class Api::ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
    render "index.json.jb"
  end
end
