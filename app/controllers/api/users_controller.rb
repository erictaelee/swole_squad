class Api::UsersController < ApplicationController
  def index
    # render json: "message: People are signing up!"
    user = current_user
    p user
    admin = user.adminid
    p admin
    if current_user && admin == "a0001"
      @users = User.all
      render "index.json.jb"
    else
      p current_user
      @users = []
      render json: { message: "Access Denied (UIndex)" }
    end
  end

  def show
    if current_user
      @user = current_user
      render "show.json.jb"
    else
      @user = []
      render json: { message: "Access Denied (UShow)" }
    end
  end
  
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
