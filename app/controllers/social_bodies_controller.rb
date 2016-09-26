class SocialBodiesController < ApplicationController
  before_action :authenticate_member!

  before_action :authenticate_admin

  before_action :set_social_body, only: [:show, :edit, :update, :destroy]

  # GET /social_bodies
  # GET /social_bodies.json
  def index
    @social_bodies = SocialBody.page(params[:page]).per(30)
  end

  # GET /social_bodies/1
  # GET /social_bodies/1.json
  def show
  end

  # GET /social_bodies/new
  def new
    @social_body = SocialBody.new
  end

  # GET /social_bodies/1/edit
  def edit
  end

  # POST /social_bodies
  # POST /social_bodies.json
  def create
    @social_body = SocialBody.new(social_body_params)

    respond_to do |format|
      if @social_body.save
        format.html { redirect_to @social_body, notice: 'Social body was successfully created.' }
        # format.json { render :show, status: :created, location: @social_body }
      else
        format.html { render :new }
        # format.json { render json: @social_body.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /social_bodies/1
  # PATCH/PUT /social_bodies/1.json
  def update
    respond_to do |format|
      if @social_body.update(social_body_params)
        format.html { redirect_to @social_body, notice: 'Social body was successfully updated.' }
        # format.json { render :show, status: :ok, location: @social_body }
      else
        format.html { render :edit }
        # format.json { render json: @social_body.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_bodies/1
  # DELETE /social_bodies/1.json
  def destroy
    @social_body.destroy
    respond_to do |format|
      format.html { redirect_to social_bodies_url, notice: 'Social body was successfully destroyed.' }
      # format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_body
      @social_body = SocialBody.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def social_body_params
      params.require(:social_body).permit(:name, :role, :position)
    end


    def authenticate_admin
      if !current_member.is_admin?
        redirect_to root_path, notice: "You are no admin!"
      else

      end
    end
end
