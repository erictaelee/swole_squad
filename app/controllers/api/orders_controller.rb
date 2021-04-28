class Api::OrdersController < ApplicationController
  def index
    @orders = Order.all
    render 'index.json.jb'
  end
  
  def create
    p "current_user"
    p current_user
    p "current_user"

    exercise = Exercise.find_by(id: params[:exercise_id])
    # total_exercise = params[:quantity].to_i * exercise

    @order = Order.new(
      exercise_id: params[:exercise_id],
      user_id: current_user.id,
      quantity: params[:quantity],
      total: 1
    )
    @order.save
    render 'show.json.jb'
  end
end
