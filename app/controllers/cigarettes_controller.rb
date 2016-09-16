class CigarettesController < ApplicationController
  before_action :set_cigarette, only: [:show, :edit, :update, :destroy]

  # GET /cigarettes
  # GET /cigarettes.json
  def index
    @cigarettes = Cigarette.all
  end

  # GET /cigarettes/1
  # GET /cigarettes/1.json
  def show
  end

  # GET /cigarettes/new
  def new
    @cigarette = Cigarette.new
  end

  # GET /cigarettes/1/edit
  def edit
  end

  # POST /cigarettes
  # POST /cigarettes.json
  def create
    @cigarette = Cigarette.new(cigarette_params)

    respond_to do |format|
      if @cigarette.save
        format.html { redirect_to @cigarette, notice: 'Cigarette was successfully created.' }
        format.json { render :show, status: :created, location: @cigarette }
      else
        format.html { render :new }
        format.json { render json: @cigarette.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cigarettes/1
  # PATCH/PUT /cigarettes/1.json
  def update
    respond_to do |format|
      if @cigarette.update(cigarette_params)
        format.html { redirect_to @cigarette, notice: 'Cigarette was successfully updated.' }
        format.json { render :show, status: :ok, location: @cigarette }
      else
        format.html { render :edit }
        format.json { render json: @cigarette.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cigarettes/1
  # DELETE /cigarettes/1.json
  def destroy
    @cigarette.destroy
    respond_to do |format|
      format.html { redirect_to cigarettes_url, notice: 'Cigarette was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cigarette
      @cigarette = Cigarette.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cigarette_params
      params.require(:cigarette).permit(:name)
    end
end
