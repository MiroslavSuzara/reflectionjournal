class Comment < ActiveRecord::Base
  belongs_to :reflection
  belongs_to :user

  validates :body, presence: true

  def user_first_name
    user.first_name if user
  end

end
