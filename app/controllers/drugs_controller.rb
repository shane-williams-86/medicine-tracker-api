class DrugsController < ApplicationController
  before_action :authenticate_user

  def create
    drug = Drug.new(
      name: params[:name],
      description: params[:description],
      image_url: params[:image_url],
      frequency: params[:frequency],
      notes: params[:notes],
      patient_id: params[:patient_id],
    )
    if drug.save
      render json: drug
    else
      render json: { errors: drug.errors.full_messages }, status: :bad_request
    end
  end

  def update
    drug = Drug.find(params[:id])
    drug.name = params[:name] || drug.name
    drug.description = params[:description] || drug.description
    drug.image_url = params[:image_url] || drug.image_url
    drug.frequency = params[:frequency] || drug.frequency
    drug.notes = params[:notes] || drug.notes
    if drug.save
      render json: drug
    else
      render json: { errors: drug.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    drug = Drug.find(params[:id])
    drug.destroy
    render json: { message: "Drug Deleted!" }
  end
end
