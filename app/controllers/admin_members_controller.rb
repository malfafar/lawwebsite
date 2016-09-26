class AdminMembersController < ApplicationController

  before_action :authenticate_member!

  before_action :authenticate_admin

  before_action :set_member, only: [:show, :edit, :update, :destroy]

  include MembersHelper
  def index_active
    if params[:search]
      @members = Kaminari.paginate_array(Member.where.not(role: role_pending).search(params[:search])).page(params[:page]).per(30)
    else
      @members = Member.where.not(role: role_pending).page(params[:page]).per(30)
    end
  end


  def index_pending
    if params[:search]
      @members = Kaminari.paginate_array(Member.where(role: role_pending).search(params[:search])).page(params[:page]).per(30)
    else
      @members = Member.where(role: role_pending).page(params[:page]).per(30)
    end
  end

  def show
  end

  def edit
  end

  def new
    @member = Member.new
  end

  def create
    respond_to do |format|
      @member = Member.new(member_params)

      if @member.save
        @member.send_confirmation_instructions
        format.html { redirect_to admin_member_show_path(@member), notice: 'Member was successfully created.' }
        # format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :new }
        # format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to admin_member_show_path(@member), notice: 'Member was successfully updated.' }
        # format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        # format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Member was successfully destroyed.' }
      # format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_member
    @member = Member.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def member_params
    params.require(:member).permit(:name, :membership_number, :email, :naturality, :birthday, :residence, :zip_code, :phone, :office, :office_address, :office_zipcode, :attached_registry, :office_phone, :office_fax, :location_class, :career_start_date, :personal_class, :class_promotion_date, :practice_level, :level_start_date, :pending, :role)
  end

  def authenticate_admin
    if !current_member.is_admin?
      redirect_to root_path, notice: "You are no admin!"
    else
    end
  end

end
