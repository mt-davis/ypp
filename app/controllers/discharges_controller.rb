class DischargesController < ApplicationController
  before_action :set_discharge, only: [:show, :edit, :update, :destroy]

  # GET /discharges
  # GET /discharges.json
  def index
    @discharges = Discharge.all
  end

  # GET /discharges/1
  # GET /discharges/1.json
  def show
  end

  # GET /discharges/new
  def new
    @discharge = Discharge.new
  end

  # GET /discharges/1/edit
  def edit
  end

  # POST /discharges
  # POST /discharges.json
  def create
    @discharge = Discharge.new(discharge_params)

    respond_to do |format|
      if @discharge.save
        format.html { redirect_to @discharge, notice: 'Discharge was successfully created.' }
        format.json { render :show, status: :created, location: @discharge }
      else
        format.html { render :new }
        format.json { render json: @discharge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discharges/1
  # PATCH/PUT /discharges/1.json
  def update
    respond_to do |format|
      if @discharge.update(discharge_params)
        format.html { redirect_to @discharge, notice: 'Discharge was successfully updated.' }
        format.json { render :show, status: :ok, location: @discharge }
      else
        format.html { render :edit }
        format.json { render json: @discharge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discharges/1
  # DELETE /discharges/1.json
  def destroy
    @discharge.destroy
    respond_to do |format|
      format.html { redirect_to discharges_url, notice: 'Discharge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discharge
      @discharge = Discharge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discharge_params
      params.require(:discharge).permit(:reason)
    end
end
