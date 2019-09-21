class VisitsController < ApplicationController
  before_action :set_patient
  before_action :set_visit, only: [:show, :update, :destroy]

  # GET /visits
  def index
    @visits = @patient.visits

    render json: @visits
  end

  # GET /visits/1
  def show
    render json: @visit
  end

  # POST /visits
  def create
    @visit = @patient.visits.new(visit_params)

    if @visit.save
      render json: @visit, status: :created, location: @visit
    else
      render json: @visit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /visits/1
  def update
    if @visit.update(visit_params)
      render json: @visit
    else
      render json: @visit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /visits/1
  def destroy
    @visit.destroy
  end

  private
    def set_patient
      @patient = Patient.find(params[:patient_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_visit
      @visit = @patient.visits.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def visit_params
      params.require(:visit).permit(:patient_id, :provider_id, :visit_date, :notes)
    end
end
