class AddUserIdToTestimonials < ActiveRecord::Migration
  def change
    add_column :testimonials, :user_id, :integer
  end
end
