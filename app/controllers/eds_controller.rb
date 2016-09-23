class EdsController < ApplicationController
  before_action :set_ed, only: [:show, :edit, :update, :destroy]

  # GET /eds
  # GET /eds.json
  def index
    @eds = Ed.all
  end

  # GET /eds/1
  # GET /eds/1.json
  def show
  end

  # GET /eds/new
  def new
    @ed = Ed.new
  end

  # GET /eds/1/edit
  def edit
  end

  # POST /eds
  # POST /eds.json
  def create
    @ed = Ed.new(ed_params)

    respond_to do |format|
      if @ed.save
        format.html { redirect_to @ed, notice: 'Ed was successfully created.' }
        format.json { render :show, status: :created, location: @ed }
      else
        format.html { render :new }
        format.json { render json: @ed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eds/1
  # PATCH/PUT /eds/1.json
  def update
    respond_to do |format|
      if @ed.update(ed_params)
        format.html { redirect_to @ed, notice: 'Ed was successfully updated.' }
        format.json { render :show, status: :ok, location: @ed }
      else
        format.html { render :edit }
        format.json { render json: @ed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eds/1
  # DELETE /eds/1.json
  def destroy
    @ed.destroy
    respond_to do |format|
      format.html { redirect_to eds_url, notice: 'Ed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ed
      @ed = Ed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ed_params
      params.require(:ed).permit(:name)
    end
end
