class CreateDog < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :sex
      t.string :age
      t.string :info
      t.integer :user_id
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at

      t.timestamps null: false
    end
  end
end
