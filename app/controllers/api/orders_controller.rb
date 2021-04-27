class Api::OrdersController < ApplicationController
  def create
    @order = Order.new(
      exercise_id: 14,
      user_id: 3,
      total: 2
    )
    @order.save
    render 'show.json.jb'
  end
end
