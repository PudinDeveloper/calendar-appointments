class MedicalHistoriesController < ApplicationController
  before_action :set_medical_history, only: %i[ show edit update destroy ]

  # GET /medical_histories or /medical_histories.json
  def index
    @medical_histories = MedicalHistory.all
  end

  # GET /medical_histories/1 or /medical_histories/1.json
  def show
  end

  # GET /medical_histories/new
  def new
    @medical_history = MedicalHistory.new
  end

  # GET /medical_histories/1/edit
  def edit
  end

  # POST /medical_histories or /medical_histories.json
  def create
    @medical_history = MedicalHistory.new(medical_history_params)

    respond_to do |format|
      if @medical_history.save
        format.html { redirect_to medical_history_url(@medical_history), notice: "Medical history was successfully created." }
        format.json { render :show, status: :created, location: @medical_history }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @medical_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_histories/1 or /medical_histories/1.json
  def update
    respond_to do |format|
      if @medical_history.update(medical_history_params)
        format.html { redirect_to medical_history_url(@medical_history), notice: "Medical history was successfully updated." }
        format.json { render :show, status: :ok, location: @medical_history }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medical_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_histories/1 or /medical_histories/1.json
  def destroy
    @medical_history.destroy!

    respond_to do |format|
      format.html { redirect_to medical_histories_url, notice: "Medical history was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_history
      @medical_history = MedicalHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medical_history_params
      params.require(:medical_history).permit(:diagnosis, :consultation_date, :notes, :patient_id)
    end
end
