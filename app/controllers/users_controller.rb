class UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      phone_number: params[:phone_number],
      image_url: params[image_url]

    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    user = User.find(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      phone_number: params[:phone_number],
      image_url: params[image_url])
      user.save
      render json: user.as_json
    end
  end

  def show
    user = User.find(params[:id])
    render json: user.as_json
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: {message: "User Deleted!"}
  end
end
