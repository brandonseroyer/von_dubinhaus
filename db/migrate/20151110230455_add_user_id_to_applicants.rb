class AddUserIdToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :user_id, :integer
  end
end
