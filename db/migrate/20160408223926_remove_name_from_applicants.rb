class RemoveNameFromApplicants < ActiveRecord::Migration
  def change
    remove_column :applicants, :name
  end
end
