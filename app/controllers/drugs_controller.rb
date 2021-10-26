class DrugsController < ApplicationController
  def create
    drug = Drug.new(
      name: params[:name],
      description: params[:description],
      image_url: params[:image_url],
      frequency: params[:frequency],
      notes: params[:notes],
      patient_id: params[:patient_id]
    )
    if drug.save
      render json: { message: "Drug Created!" }, status: :created
    else
      render json: { errors: drug.errors.full_messages }, status: :bad_request
    end
  end

  def update
    drug = Drug.find(
      name: params[:name],
      description: params[:description],
      image_url: params[:image_url],
      frequency: params[:frequency],
      notes: params[:notes],
      patient_id: params[:patient_id]
      drug.save
      render json: drug.as_json
    )
  end

  def destroy
    drug = Drug.find(params[:id])
    drug.destroy
    render json: {message: "Drug Deleted!"}
  end
end

