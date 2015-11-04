class Dog < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true
  validates :sex, presence: true
  validates :age, presence: true
  validates :info, presence: true
  validates :breed, presence: true

  has_attached_file :image, :styles => {:standard => "750x500", :profile => "500x350", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
