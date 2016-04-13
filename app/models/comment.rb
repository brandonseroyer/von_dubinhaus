class Comment < ActiveRecord::Base
  belongs_to :dog
  default_scope { order('created_at ASC')}
  validates :name, presence: true
  validates :comment, presence: true
end
