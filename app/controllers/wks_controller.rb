class WksController < ApplicationController
  before_action :set_wk, only: [:show, :edit, :update, :destroy]

  # GET /wks
  # GET /wks.json
  def index
    @wks = Wk.all
  end

  # GET /wks/1
  # GET /wks/1.json
  def show
  end

  # GET /wks/new
  def new
    @wk = Wk.new
  end

  # GET /wks/1/edit
  def edit
  end

  # POST /wks
  # POST /wks.json
  def create
    @wk = Wk.new(wk_params)

    respond_to do |format|
      if @wk.save
        format.html { redirect_to @wk, notice: 'Wk was successfully created.' }
        format.json { render :show, status: :created, location: @wk }
      else
        format.html { render :new }
        format.json { render json: @wk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wks/1
  # PATCH/PUT /wks/1.json
  def update
    respond_to do |format|
      if @wk.update(wk_params)
        format.html { redirect_to @wk, notice: 'Wk was successfully updated.' }
        format.json { render :show, status: :ok, location: @wk }
      else
        format.html { render :edit }
        format.json { render json: @wk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wks/1
  # DELETE /wks/1.json
  def destroy
    @wk.destroy
    respond_to do |format|
      format.html { redirect_to wks_url, notice: 'Wk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wk
      @wk = Wk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wk_params
      params.require(:wk).permit(:name)
    end
end
