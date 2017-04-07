class Post < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  has_many :messages
  validates :title, presence: true, length: { in: 7..64 }
  validates :content, presence: true
end
