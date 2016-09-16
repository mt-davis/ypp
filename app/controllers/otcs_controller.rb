class OtcsController < ApplicationController
  before_action :set_otc, only: [:show, :edit, :update, :destroy]

  # GET /otcs
  # GET /otcs.json
  def index
    @otcs = Otc.all
  end

  # GET /otcs/1
  # GET /otcs/1.json
  def show
  end

  # GET /otcs/new
  def new
    @otc = Otc.new
  end

  # GET /otcs/1/edit
  def edit
  end

  # POST /otcs
  # POST /otcs.json
  def create
    @otc = Otc.new(otc_params)

    respond_to do |format|
      if @otc.save
        format.html { redirect_to @otc, notice: 'Otc was successfully created.' }
        format.json { render :show, status: :created, location: @otc }
      else
        format.html { render :new }
        format.json { render json: @otc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /otcs/1
  # PATCH/PUT /otcs/1.json
  def update
    respond_to do |format|
      if @otc.update(otc_params)
        format.html { redirect_to @otc, notice: 'Otc was successfully updated.' }
        format.json { render :show, status: :ok, location: @otc }
      else
        format.html { render :edit }
        format.json { render json: @otc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /otcs/1
  # DELETE /otcs/1.json
  def destroy
    @otc.destroy
    respond_to do |format|
      format.html { redirect_to otcs_url, notice: 'Otc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_otc
      @otc = Otc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def otc_params
      params.require(:otc).permit(:name)
    end
end
