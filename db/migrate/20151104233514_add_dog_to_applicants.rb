class AddDogToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :dog, :string
  end
end
