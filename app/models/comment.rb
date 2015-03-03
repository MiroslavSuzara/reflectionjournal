class Comment < ActiveRecord::Base
  belongs_to :reflection
  belongs_to :user

  validates :body, presence: true

end
