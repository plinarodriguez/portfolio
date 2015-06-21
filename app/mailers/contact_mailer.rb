class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.email_contact.subject
  #
  def email_contact(params)
    @first_name = params["first_name"]
    @last_name = params["last_name"]
    @email = params["email"]
    @msg = params["msg"]
    mail to: "plinarodriguez@gmail.com", subject:"You have been contacted"
  end
end