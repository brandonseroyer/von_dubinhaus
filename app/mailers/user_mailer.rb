class UserMailer < ApplicationMailer
  default from: 'notifications@vondubinhaus.com'

  def application_email
    @user = 'brandonseroyer@gmail.com'
    mail(to: @user, subject: 'A new Adoption Application has been submited!')
  end

  def comment_email(dog)
    @dog = dog
    @user = 'brandonseroyer@gmail.com'
    mail(to: @user, subject: 'A new Comment has been made on www.vondubinhaus.com')
  end
end
