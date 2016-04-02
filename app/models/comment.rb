class Comment < ActiveRecord::Base
  belongs_to :dog
  default_scope { order('created_at ASC')}
  validates :content, presence: true
end
