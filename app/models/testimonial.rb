class Testimonial < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  has_attached_file :image, styles: {
    standard: '750x500',
    profile: '450x300',
    thumb: '300x225'
   }

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
