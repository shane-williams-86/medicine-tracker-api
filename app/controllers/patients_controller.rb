class PatientsController < ApplicationController
  def index
    patients = Patient.all 
    render json: patients
  end

  def create
    patient = Patient.new(
      name: params[:name],
      user_id: params[:user_id],
      notes: params[:notes],
      image_url: params[:image_url]

    )
    if user.save
      render json: { message: "Patient Created!" }, status: :created
    else
      render json: { errors: patient.errors.full_messages }, status: :bad_request
    end
  end

  def update
    patient = Patient.find(
      name: params[:name],
      user_id: params[:user_id],
      notes: params[:notes],
      image_url: params[:image_url],
      patient.save
      render json: patient.as_json
    end
  end

  def show
    patient = Patient.find(params[:id])
    render json: patient.as_json
  end

  def destroy
    patient = patient.find(params[:id])
    patient.destroy
    render json: {message: "Patient Deleted!"}
  end
end
