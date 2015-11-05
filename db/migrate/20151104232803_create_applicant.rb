class CreateApplicant < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :address
      t.boolean :cats
      t.boolean :dogs
      t.boolean :kids
      t.text :about    
    end
  end
end
