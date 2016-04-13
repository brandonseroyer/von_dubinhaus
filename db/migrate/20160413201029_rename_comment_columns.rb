class RenameCommentColumns < ActiveRecord::Migration
  def change
    rename_column :comments, :author, :name
    rename_column :comments, :content, :comment
  end
end
