class CparentsController < ApplicationController
  before_action :set_cparent, only: [:show, :edit, :update, :destroy]

  # GET /cparents
  # GET /cparents.json
  def index
    @cparents = Cparent.all
  end

  # GET /cparents/1
  # GET /cparents/1.json
  def show
  end

  # GET /cparents/new
  def new
    @cparent = Cparent.new
  end

  # GET /cparents/1/edit
  def edit
  end

  # POST /cparents
  # POST /cparents.json
  def create
    @cparent = Cparent.new(cparent_params)

    respond_to do |format|
      if @cparent.save
        format.html { redirect_to @cparent, notice: 'Cparent was successfully created.' }
        format.json { render :show, status: :created, location: @cparent }
      else
        format.html { render :new }
        format.json { render json: @cparent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cparents/1
  # PATCH/PUT /cparents/1.json
  def update
    respond_to do |format|
      if @cparent.update(cparent_params)
        format.html { redirect_to @cparent, notice: 'Cparent was successfully updated.' }
        format.json { render :show, status: :ok, location: @cparent }
      else
        format.html { render :edit }
        format.json { render json: @cparent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cparents/1
  # DELETE /cparents/1.json
  def destroy
    @cparent.destroy
    respond_to do |format|
      format.html { redirect_to cparents_url, notice: 'Cparent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cparent
      @cparent = Cparent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cparent_params
      params.require(:cparent).permit(:name)
    end
end
