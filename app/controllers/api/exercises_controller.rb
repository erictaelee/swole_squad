class Api::ExercisesController < ApplicationController
  def index

    response = HTTP.get("https://wger.de/api/v2/exercise/?format=json")
    # render json: response.parse

    @exercises = response.parse["results"]
    
    
    @exercises.each do |exercise|
      puts exercise["name"]
    end

    # @exercises = Exercise.all
    # render "index.json.jb"

  end


    # @exercises = Exercise.all
    # render "index.json.jb"
 

  def show
    @exercise = Exercise.find_by(id: params[:id])
    render "show.json.jb"
  end
end
