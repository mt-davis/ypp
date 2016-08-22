class PregsController < ApplicationController
  before_action :set_preg, only: [:show, :edit, :update, :destroy]

  # GET /pregs
  # GET /pregs.json
  def index
    @pregs = Preg.all
  end

  # GET /pregs/1
  # GET /pregs/1.json
  def show
  end

  # GET /pregs/new
  def new
    @preg = Preg.new
  end

  # GET /pregs/1/edit
  def edit
  end

  # POST /pregs
  # POST /pregs.json
  def create
    @preg = Preg.new(preg_params)

    respond_to do |format|
      if @preg.save
        format.html { redirect_to @preg, notice: 'Preg was successfully created.' }
        format.json { render :show, status: :created, location: @preg }
      else
        format.html { render :new }
        format.json { render json: @preg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pregs/1
  # PATCH/PUT /pregs/1.json
  def update
    respond_to do |format|
      if @preg.update(preg_params)
        format.html { redirect_to @preg, notice: 'Preg was successfully updated.' }
        format.json { render :show, status: :ok, location: @preg }
      else
        format.html { render :edit }
        format.json { render json: @preg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pregs/1
  # DELETE /pregs/1.json
  def destroy
    @preg.destroy
    respond_to do |format|
      format.html { redirect_to pregs_url, notice: 'Preg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preg
      @preg = Preg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def preg_params
      params.require(:preg).permit(:name)
    end
end
