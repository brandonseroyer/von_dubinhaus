class Image < ActiveRecord::Base
  belongs_to :dog
  belongs_to :User
  
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  private

  def image_present
    if image.nil?
      errors.add(:image, "no image had been selected.")
    end
  end
end
