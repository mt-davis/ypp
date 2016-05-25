class CnotesController < ApplicationController
  before_action :set_cnote, only: [:show, :edit, :update, :destroy]

  # GET /cnotes
  # GET /cnotes.json
  def index
    @cnotes = Cnote.all
  end

  # GET /cnotes/1
  # GET /cnotes/1.json
  def show
  end

  # GET /cnotes/new
  def new
    @cnote = Cnote.new
  end

  # GET /cnotes/1/edit
  def edit
  end

  # POST /cnotes
  # POST /cnotes.json
  def create
    @cnote = Cnote.new(cnote_params)

    respond_to do |format|
      if @cnote.save
        format.html { redirect_to @cnote, notice: 'Cnote was successfully created.' }
        format.json { render :show, status: :created, location: @cnote }
      else
        format.html { render :new }
        format.json { render json: @cnote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cnotes/1
  # PATCH/PUT /cnotes/1.json
  def update
    respond_to do |format|
      if @cnote.update(cnote_params)
        format.html { redirect_to @cnote, notice: 'Cnote was successfully updated.' }
        format.json { render :show, status: :ok, location: @cnote }
      else
        format.html { render :edit }
        format.json { render json: @cnote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cnotes/1
  # DELETE /cnotes/1.json
  def destroy
    @cnote.destroy
    respond_to do |format|
      format.html { redirect_to cnotes_url, notice: 'Cnote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cnote
      @cnote = Cnote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cnote_params
      params.require(:cnote).permit(:description)
    end
end
