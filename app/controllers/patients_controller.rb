# frozen_string_literal: true

class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :destroy]

  # GET /patients
  # GET /patients.json
  def index
    @patients = Patient.all

    render json: @patients
  end

  def show
    render json: @patient
  end

  def destroy
    @patient.destroy

    head :no_content
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end
end
