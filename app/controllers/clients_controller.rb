class ClientsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_client, only: [:show, :edit, :update, :destroy]
  

  # GET /clients
  # GET /clients.json
  def index
    @clients = Client.all.uniq.order("created_at DESC")
    @clients_count = Client.uniq.count
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
  #@notes = Note.all.uniq.order("created_at DESC")
  @notes = Note.where(client_id: @client.id) #Where a note belong to the current user
  end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = Client.new(client_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: 'Client was successfully created.' }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    #if params[:remove_image]
    #@client.remove_image!
    @client.save
  #end
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice: 'Client was successfully updated.' }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: 'Client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:client).permit(:firstName, :lastName,:dob, :name, :gender_id, :RefbText, :JtText, :text_rs, :msub, :text_id, :ged_id, :mj_id, :od_id, :otc_id, :cigarette_id, :alcohol_id, :grad, :remove_image, :rh_options, :insurance_id, :state_id, :ed_id, :wk_id, :grade_id, :rsource_id, :image, :race_id, :employment_id, :comments, :clientemail, :phone, :truma_id, :college_id, :enrolled, :address, :city, :state, :zipcode, rhealth_ids:[], mhealth_ids:[], cparent_ids:[], preg_ids:[], referral_ids:[], refa_ids:[], refb_ids:[])
      #params.require(:client).permit(:name, mhealth_ids:[])
    end
  end