class MhealthsController < ApplicationController
  before_action :set_mhealth, only: [:show, :edit, :update, :destroy]

  # GET /mhealths
  # GET /mhealths.json
  def index
    @mhealths = Mhealth.all
  end

  # GET /mhealths/1
  # GET /mhealths/1.json
  def show
  end

  # GET /mhealths/new
  def new
    @mhealth = Mhealth.new
  end

  # GET /mhealths/1/edit
  def edit
  end

  # POST /mhealths
  # POST /mhealths.json
  def create
    @mhealth = Mhealth.new(mhealth_params)

    respond_to do |format|
      if @mhealth.save
        format.html { redirect_to @mhealth, notice: 'Mhealth was successfully created.' }
        format.json { render :show, status: :created, location: @mhealth }
      else
        format.html { render :new }
        format.json { render json: @mhealth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mhealths/1
  # PATCH/PUT /mhealths/1.json
  def update
    respond_to do |format|
      if @mhealth.update(mhealth_params)
        format.html { redirect_to @mhealth, notice: 'Mhealth was successfully updated.' }
        format.json { render :show, status: :ok, location: @mhealth }
      else
        format.html { render :edit }
        format.json { render json: @mhealth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mhealths/1
  # DELETE /mhealths/1.json
  def destroy
    @mhealth.destroy
    respond_to do |format|
      format.html { redirect_to mhealths_url, notice: 'Mhealth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mhealth
      @mhealth = Mhealth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mhealth_params
      params.require(:mhealth).permit(:name)
    end
end
