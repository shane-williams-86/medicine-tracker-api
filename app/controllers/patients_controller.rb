class PatientsController < ApplicationController

  # before_action :authenticate_user, except: [:index, :show]
  
  def index
    patients = Patient.all
    render json: patients
  end

  def create
    patient = Patient.new(
      name: params[:name],
      user_id: params[:user_id],
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
    patient.user_id = params[:user_id] || patient.user_id
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
    patient = patient.find(params[:id])
    patient.destroy
    render json: { message: "Patient Deleted!" }
  end
end
