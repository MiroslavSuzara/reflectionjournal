class Reflection < ActiveRecord::Base
  validates :answer1, presence: {message: "must be provided!!"}
  validates :answer2, presence: {message: "must be provided!!"}
  validates :answer3, presence: {message: "must be provided!!"}
end
