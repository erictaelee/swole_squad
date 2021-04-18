class Api::MusclesController < ApplicationController
  def index
    response = HTTP.get("https://wger.de/api/v2/muscle/?format=json")
    puts response.parse
    muscles = response.parse["results"]
    
    @muscles.each do |muscle|
      p muscle["name"]
    end
    
    # render json: response.parse["results"]
    # @muscles = Muscle.all
    # render 'index.json.jb'

  end

  def show
    @muscle = Muscle.find_by(id: params[:id])
    render 'show.json.jb'

  end

  # def create
  #   @muscle = Muscle.create(

  #   )

  # end

  # def update

  # end

  # def destroy
    
  # end
  
end
