class AddMessageToDonations < ActiveRecord::Migration
  def change
    add_column :donations, :message, :string
  end
end
