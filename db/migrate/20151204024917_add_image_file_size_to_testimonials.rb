class AddImageFileSizeToTestimonials < ActiveRecord::Migration
  def change
    add_column :testimonials, :image_file_size, :integer
  end
end
