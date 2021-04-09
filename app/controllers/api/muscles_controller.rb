class Api::MusclesController < ApplicationController
  def index
    response = HTTP.get("https://wger.de/api/v2/?format=json")
    render json: response.parse
    # puts response.parse
  end
  
end
