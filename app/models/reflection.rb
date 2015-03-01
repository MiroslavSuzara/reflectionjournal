class Reflection < ActiveRecord::Base
  validates :answer1, presence: {message: "Reflection must be provided!!"}
  validates :answer2, presence: {message: "Reflection must be provided!!"}
  validates :answer3, presence: {message: "Reflection must be provided!!"}
end
