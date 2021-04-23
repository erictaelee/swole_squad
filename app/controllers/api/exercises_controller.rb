class Api::ExercisesController < ApplicationController
  def index

    response = HTTP.get("https://wger.de/api/v2/exercise/?format=json")
    exercises = response.parse
    p response.parse
    
    # @exercises.each do |exercise|
    #   p exercise["results"]
  end


    # @exercises = Exercise.all
    # render "index.json.jb"
 

  def show
    @exercise = Exercise.find_by(id: params[:id])
    render "show.json.jb"
  end
end
