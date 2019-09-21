class PatientDiagnosesController < ApplicationController
  before_action :set_patient
  before_action :set_patient_diagnosis, only: [:show, :update, :destroy]

  # GET /patient_diagnoses
  def index
    @patient_diagnoses = @patient.patient_diagnoses

    render json: @patient_diagnoses
  end

  # GET /patient_diagnoses/1
  def show
    render json: @patient_diagnosis
  end

  # POST /patient_diagnoses
  def create
    @patient_diagnosis = @patient.patient_diagnoses.new(patient_diagnosis_params)

    if @patient_diagnosis.save
      render json: @patient_diagnosis, status: :created, location: @patient_diagnosis
    else
      render json: @patient_diagnosis.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /patient_diagnoses/1
  def update
    if @patient_diagnosis.update(patient_diagnosis_params)
      render json: @patient_diagnosis
    else
      render json: @patient_diagnosis.errors, status: :unprocessable_entity
    end
  end

  # DELETE /patient_diagnoses/1
  def destroy
    @patient_diagnosis.destroy
  end

  private
    def set_patient
      @patient = Patient.find(params[:patient_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_patient_diagnosis
      @patient_diagnosis = @patient.patient_diagnoses.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def patient_diagnosis_params
      params.require(:diagnosis).permit(:patient_id, :provider_id, :diagnosis_id, :start_date, :end_date)
    end
end
