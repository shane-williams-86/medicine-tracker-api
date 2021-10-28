class UsersController < ApplicationController
  # before_action :authenticate_user, except: [:index, :show]

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      phone_number: params[:phone_number],
      image_url: params[:image_url],

    )
    if user.save
      render json: user
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    user = User.find(params[:id])
    user.name = params[:name] || user.name
    user.email = params[:email] || user.email
    user.password = params[:password_confirmation] || user.password
    user.password_confirmation = params[:password_confirmation] || user.password_confirmation
    user.phone_number = params[:phone_number] || user.phone_number
    user.image_url = params[:image_url] || user.image_url
    if user.save
      render json: user
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: { message: "User Deleted!" }
  end
end
