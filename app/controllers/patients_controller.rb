class PatientsController < ApplicationController
  before_action :authenticate_user

  def index
    patients = current_user.patients
    render json: patients
  end

  def create
    patient = Patient.new(
      name: params[:name],
      user_id: current_user.id,
      notes: params[:notes],
      image_url: params[:image_url],

    )
    if patient.save
      render json: patient
    else
      render json: { errors: patient.errors.full_messages }, status: :bad_request
    end
  end

  def update
    patient = Patient.find(params[:id])
    patient.name = params[:name] || patient.name
    patient.notes = params[:notes] || patient.notes
    patient.image_url = params[:image_url] || patient.image_url
    if patient.save
      render json: patient
    else
      render json: { errors: patient.errors.full_messages }, status: :bad_request
    end
  end

  def show
    patient = Patient.find(params[:id])
    render json: patient
  end

  def destroy
    patient = Patient.find(params[:id])
    patient.destroy
    render json: { message: "Patient Deleted!" }
  end
end
