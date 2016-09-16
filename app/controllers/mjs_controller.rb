class MjsController < ApplicationController
  before_action :set_mj, only: [:show, :edit, :update, :destroy]

  # GET /mjs
  # GET /mjs.json
  def index
    @mjs = Mj.all
  end

  # GET /mjs/1
  # GET /mjs/1.json
  def show
  end

  # GET /mjs/new
  def new
    @mj = Mj.new
  end

  # GET /mjs/1/edit
  def edit
  end

  # POST /mjs
  # POST /mjs.json
  def create
    @mj = Mj.new(mj_params)

    respond_to do |format|
      if @mj.save
        format.html { redirect_to @mj, notice: 'Mj was successfully created.' }
        format.json { render :show, status: :created, location: @mj }
      else
        format.html { render :new }
        format.json { render json: @mj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mjs/1
  # PATCH/PUT /mjs/1.json
  def update
    respond_to do |format|
      if @mj.update(mj_params)
        format.html { redirect_to @mj, notice: 'Mj was successfully updated.' }
        format.json { render :show, status: :ok, location: @mj }
      else
        format.html { render :edit }
        format.json { render json: @mj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mjs/1
  # DELETE /mjs/1.json
  def destroy
    @mj.destroy
    respond_to do |format|
      format.html { redirect_to mjs_url, notice: 'Mj was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mj
      @mj = Mj.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mj_params
      params.require(:mj).permit(:name)
    end
end
