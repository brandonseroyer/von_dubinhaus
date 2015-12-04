class CreateTestimonial < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :name
      t.string :date
      t.string :story

      t.timestamps
    end
  end
end
