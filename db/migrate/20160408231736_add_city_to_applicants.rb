class AddCityToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :city, :string
    add_column :applicants, :state, :string
    add_column :applicants, :zip, :string
  end
end
