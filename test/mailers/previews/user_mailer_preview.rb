# Preview at http://;pca;jpst:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  def contact_form
    UserMailer.contact_form("Elina", "Charalampous", "john@example.com", "123456789", "Hello Word")
  end

end
