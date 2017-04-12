class Dojo < ActiveRecord::Base
  has_many :students
  validates :branch, presence:true
end
