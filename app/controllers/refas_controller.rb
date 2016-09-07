class RefasController < ApplicationController
  before_action :set_refa, only: [:show, :edit, :update, :destroy]

  # GET /refas
  # GET /refas.json
  def index
    @refas = Refa.all
  end

  # GET /refas/1
  # GET /refas/1.json
  def show
  end

  # GET /refas/new
  def new
    @refa = Refa.new
  end

  # GET /refas/1/edit
  def edit
  end

  # POST /refas
  # POST /refas.json
  def create
    @refa = Refa.new(refa_params)

    respond_to do |format|
      if @refa.save
        format.html { redirect_to @refa, notice: 'Refa was successfully created.' }
        format.json { render :show, status: :created, location: @refa }
      else
        format.html { render :new }
        format.json { render json: @refa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /refas/1
  # PATCH/PUT /refas/1.json
  def update
    respond_to do |format|
      if @refa.update(refa_params)
        format.html { redirect_to @refa, notice: 'Refa was successfully updated.' }
        format.json { render :show, status: :ok, location: @refa }
      else
        format.html { render :edit }
        format.json { render json: @refa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /refas/1
  # DELETE /refas/1.json
  def destroy
    @refa.destroy
    respond_to do |format|
      format.html { redirect_to refas_url, notice: 'Refa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_refa
      @refa = Refa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def refa_params
      params.require(:refa).permit(:name)
    end
end
