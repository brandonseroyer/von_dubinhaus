class AddUpdatedAtToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :updated_at, :datetime
  end
end
