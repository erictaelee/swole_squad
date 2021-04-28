class Api::OrdersController < ApplicationController
  def index
    p "current_user"
    p current_user
    p "current_user"


    @orders = current_user.orders
    render 'index.json.jb'
  end
  
  def show
    @order = Order.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create

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
