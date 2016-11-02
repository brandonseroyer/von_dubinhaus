class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :avatar_file_name
      t.string :avatar_content_type
      t.integer :avatar_file_size
      t.datetime :avatar_updated_at
      t.integer :dog_id

      t.timestamps null: false
    end
  end
end
