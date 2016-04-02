class RenameChargesTableToDonationsTable < ActiveRecord::Migration
  def change
    rename_table :charges, :donations
  end
end
