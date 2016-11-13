class ChangeAmountFieldInDonationsTable < ActiveRecord::Migration
  def change
    change_column :donations, :amount, :decimal, :precision => 12, :scale => 3
  end
end
