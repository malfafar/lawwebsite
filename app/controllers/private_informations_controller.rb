class PrivateInformationsController < ApplicationController

  before_action :authenticate_member!

  before_action :authenticate_admin

  before_action :set_private_information, only: [:show, :edit, :update, :destroy]

  # GET /private_informations
  # GET /private_informations.json
  def index
    if params[:search]
      @private_informations = Kaminari.paginate_array(PrivateInformation.search(params[:search])).page(params[:page]).per(30)
    else
      @private_informations = PrivateInformation.page(params[:page]).per(30)
    end
  end

  # GET /private_informations/1
  # GET /private_informations/1.json
  def show
  end

  # GET /private_informations/new
  def new
    @private_information = PrivateInformation.new
  end

  # GET /private_informations/1/edit
  def edit
  end

  # POST /private_informations
  # POST /private_informations.json
  def create
    @private_information = PrivateInformation.new(private_information_params)

    respond_to do |format|
      if @private_information.save
        format.html { redirect_to @private_information, notice: 'Private information was successfully created.' }
        # format.json { render :show, status: :created, location: @private_information }
      else
        format.html { render :new }
        # format.json { render json: @private_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /private_informations/1
  # PATCH/PUT /private_informations/1.json
  def update
    respond_to do |format|
      if @private_information.update(private_information_params)
        format.html { redirect_to @private_information, notice: 'Private information was successfully updated.' }
        # format.json { render :show, status: :ok, location: @private_information }
      else
        format.html { render :edit }
        # format.json { render json: @private_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /private_informations/1
  # DELETE /private_informations/1.json
  def destroy
    @private_information.destroy
    respond_to do |format|
      format.html { redirect_to private_informations_url, notice: 'Private information was successfully destroyed.' }
      # format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_private_information
      @private_information = PrivateInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def private_information_params
      params.require(:private_information).permit(:text, :title, :document)
    end

    def authenticate_admin
      if !current_member.is_admin?
        redirect_to root_path, notice: "You are no admin!"
      else

      end
    end
end
