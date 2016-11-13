class UserMailer < ApplicationMailer
  default from: 'notifications@vondubinhaus.com'

  def application_email
    @brandon = 'brandonseroyer@gmail.com'
    mail(to: @brandon, subject: 'A new Adoption Application has been submited!')
  end

  def comment_email(dog)
    @dog = dog
    @brandon = 'brandonseroyer@gmail.com'
    mail(to: @brandon, subject: 'A new Comment has been made on www.vondubinhaus.com')
  end

  def donation_email
    @brandon = 'brandonseroyer@gmail.com'
    mail(to: @brandon, subject: 'A Donation has been made to Von Dubinhaus Shepherds!')
  end

  def charge_email(donation)
    @donation = donation
    @paul = 'vondubinhaus@gmail.com'
    mail(to: @paul, subject: 'A new Payment has been made to Von Dubinhaus Shepherds!')
  end
end
