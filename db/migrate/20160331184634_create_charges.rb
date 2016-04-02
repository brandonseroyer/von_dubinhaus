class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.column :first_name, :string
      t.column :last_name, :string
      t.column :email, :string
      t.column :amount, :integer

      t.timestamps
    end
  end
end
