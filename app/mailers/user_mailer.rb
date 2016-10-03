class UserMailer < ApplicationMailer
  default from: 'notifications@vondubinhaus.com'
  @user = 'brandonseroyer@gmail.com'
  
  def application_email
    mail(to: @user, subject: 'A new Adoption Application has been submited!')
  end

  def comment_email(dog)
    @dog = dog
    mail(to: @user, subject: 'A new Comment has been made on www.vondubinhaus.com')
  end
end
