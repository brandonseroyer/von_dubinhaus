class AddCreatedAtToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :created_at, :datetime
  end
end
