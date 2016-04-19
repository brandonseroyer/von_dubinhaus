class Dog < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :name, presence: true
  validates :sex, presence: true
  validates :age, presence: true
  validates :info, presence: true
  validates :breed, presence: true
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  has_attached_file :image,
                    :styles => {:standard => "750x500", :profile => "450x300", :thumb => "300x225" },
                    :storage => :s3,
                    :s3_credentials => "#{Rails.root}/config/s3.yml",
                    :path => "/images/:id/:style.:extension",
                    :url => ":s3_domain_url"
end
