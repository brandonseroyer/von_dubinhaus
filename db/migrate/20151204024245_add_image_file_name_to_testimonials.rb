class AddImageFileNameToTestimonials < ActiveRecord::Migration
  def change
    add_column :testimonials, :image_file_name, :string
  end
end
