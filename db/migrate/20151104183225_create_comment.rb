class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.string :author
      t.integer :dog_id

      t.timestamps
    end
  end
end
