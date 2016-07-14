class RhealthsController < ApplicationController
  before_action :set_rhealth, only: [:show, :edit, :update, :destroy]

  # GET /rhealths
  # GET /rhealths.json
  def index
    @rhealths = Rhealth.all
  end

  # GET /rhealths/1
  # GET /rhealths/1.json
  def show
  end

  # GET /rhealths/new
  def new
    @rhealth = Rhealth.new
  end

  # GET /rhealths/1/edit
  def edit
  end

  # POST /rhealths
  # POST /rhealths.json
  def create
    @rhealth = Rhealth.new(rhealth_params)

    respond_to do |format|
      if @rhealth.save
        format.html { redirect_to @rhealth, notice: 'Rhealth was successfully created.' }
        format.json { render :show, status: :created, location: @rhealth }
      else
        format.html { render :new }
        format.json { render json: @rhealth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rhealths/1
  # PATCH/PUT /rhealths/1.json
  def update
    respond_to do |format|
      if @rhealth.update(rhealth_params)
        format.html { redirect_to @rhealth, notice: 'Rhealth was successfully updated.' }
        format.json { render :show, status: :ok, location: @rhealth }
      else
        format.html { render :edit }
        format.json { render json: @rhealth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rhealths/1
  # DELETE /rhealths/1.json
  def destroy
    @rhealth.destroy
    respond_to do |format|
      format.html { redirect_to rhealths_url, notice: 'Rhealth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rhealth
      @rhealth = Rhealth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rhealth_params
      params.require(:rhealth).permit(:name)
    end
end
