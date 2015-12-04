class AddImageContentTypeToTestimonials < ActiveRecord::Migration
  def change
    add_column :testimonials, :image_content_type, :string
  end
end
