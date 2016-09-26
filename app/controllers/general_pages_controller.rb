class GeneralPagesController < ApplicationController

  before_action :authenticate_member!, only: [:profile]

  def index
    @slides = Slide.all
    @posts = Post.order(created_at: :desc).first(3)
  end

  def about
    @about = About.first
    @social_bodies = SocialBody.all
  end

  def news
    @posts = Post.order(created_at: :desc).page(params[:page]).per(6)
  end

  def post
    @post = Post.find(params[:id])
  end

  def benefits
    @benefits = Benefit.page(params[:page]).per(20)
  end

  def benefit
    @benefit = Benefit.find(params[:id])
  end

  def jobs
    @jobs = Job.page(params[:page]).per(20)
  end

  def job
    @job = Job.find(params[:id])
  end

  def protocol
    @protocol = Protocol.find(params[:id])
  end

  def send_contact
    puts "Contact"
    puts params.inspect

    flash[:notice] = "Message Sent"
    respond_to do |format|
      if AdminNotifications.contact_email(params[:contact_info]).deliver_later
        format.html { redirect_to gp_contact_path, notice: 'Email enviado.' }
        #format.json { render :confirm_work, status: :created, location: confirm_client_works_path(@work) }
      else
        format.html { redirect_to gp_contact_path, alert: "Email não enviado." }
        #format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  def profile
  end

  def contact
  end

  def laws
    @laws = Law.page(params[:page]).per(10)
  end

  def social_bodies
    @social_bodies = SocialBody.all.order(:role)
  end

  def partners
    @partners = Partner.page(params[:page]).per(30)
  end

  def private_informations
    @private_informations = PrivateInformation.page(params[:page]).per(10)
  end

  def statutes
    @chapters = Chapter.all.order(:number)

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Estatutos - ASCR",
               encoding: 'UTF-8',
               show_as_html: params.key?('debug')
      end
    end
  end


end
