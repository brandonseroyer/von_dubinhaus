class AddImageUpdatedAtToTestimonials < ActiveRecord::Migration
  def change
    add_column :testimonials, :image_updated_at, :datetime
  end
end
