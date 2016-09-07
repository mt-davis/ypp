class RefbsController < ApplicationController
  before_action :set_refb, only: [:show, :edit, :update, :destroy]

  # GET /refbs
  # GET /refbs.json
  def index
    @refbs = Refb.all
  end

  # GET /refbs/1
  # GET /refbs/1.json
  def show
  end

  # GET /refbs/new
  def new
    @refb = Refb.new
  end

  # GET /refbs/1/edit
  def edit
  end

  # POST /refbs
  # POST /refbs.json
  def create
    @refb = Refb.new(refb_params)

    respond_to do |format|
      if @refb.save
        format.html { redirect_to @refb, notice: 'Refb was successfully created.' }
        format.json { render :show, status: :created, location: @refb }
      else
        format.html { render :new }
        format.json { render json: @refb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /refbs/1
  # PATCH/PUT /refbs/1.json
  def update
    respond_to do |format|
      if @refb.update(refb_params)
        format.html { redirect_to @refb, notice: 'Refb was successfully updated.' }
        format.json { render :show, status: :ok, location: @refb }
      else
        format.html { render :edit }
        format.json { render json: @refb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /refbs/1
  # DELETE /refbs/1.json
  def destroy
    @refb.destroy
    respond_to do |format|
      format.html { redirect_to refbs_url, notice: 'Refb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_refb
      @refb = Refb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def refb_params
      params.require(:refb).permit(:name)
    end
end
