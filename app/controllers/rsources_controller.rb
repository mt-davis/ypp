class RsourcesController < ApplicationController
  before_action :set_rsource, only: [:show, :edit, :update, :destroy]

  # GET /rsources
  # GET /rsources.json
  def index
    @rsources = Rsource.all
  end

  # GET /rsources/1
  # GET /rsources/1.json
  def show
  end

  # GET /rsources/new
  def new
    @rsource = Rsource.new
  end

  # GET /rsources/1/edit
  def edit
  end

  # POST /rsources
  # POST /rsources.json
  def create
    @rsource = Rsource.new(rsource_params)

    respond_to do |format|
      if @rsource.save
        format.html { redirect_to @rsource, notice: 'Rsource was successfully created.' }
        format.json { render :show, status: :created, location: @rsource }
      else
        format.html { render :new }
        format.json { render json: @rsource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rsources/1
  # PATCH/PUT /rsources/1.json
  def update
    respond_to do |format|
      if @rsource.update(rsource_params)
        format.html { redirect_to @rsource, notice: 'Rsource was successfully updated.' }
        format.json { render :show, status: :ok, location: @rsource }
      else
        format.html { render :edit }
        format.json { render json: @rsource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rsources/1
  # DELETE /rsources/1.json
  def destroy
    @rsource.destroy
    respond_to do |format|
      format.html { redirect_to rsources_url, notice: 'Rsource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rsource
      @rsource = Rsource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rsource_params
      params.require(:rsource).permit(:name)
    end
end
