class Applicant < ActiveRecord::Base

  default_scope { order('created_at ASC')}
  validates :name, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :address, presence: true
  validates :dog, presence: true
  validates :about, presence:true

  belongs_to :user
end
