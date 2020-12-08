class UserMailer < ApplicationMailer
  default from: 'info@invokeengineers.com'

  def contact_form(first_name, last_name, email, phone, message)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone = phone
    @message = message
    mail( from: email,
          to: "info@invokeengineers.com",
          subject: "A new contact from #{first_name} #{last_name} ")
  end

end
