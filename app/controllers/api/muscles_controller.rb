class Api::MusclesController < ApplicationController
  def index
    # response = HTTP.get("https://wger.de/api/v2/muscle/?format=json")
    # render json: response.parse
    # puts response.parse
    @muscles = Muscle.all
    render 'index.json.jb'

  end

  def show

  end

  
end
