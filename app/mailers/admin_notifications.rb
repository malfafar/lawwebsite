class AdminNotifications < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_notifications.contact_email.subject
  #
  def contact_email(contact_info)
    @contact_info = contact_info
    mail(from: @contact_info[:email],to: Rails.application.secrets.mailer_username, subject: 'Formulário de Contacto ASCR')
  end
end
