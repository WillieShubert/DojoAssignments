class User < ActiveRecord::Base
  has_one :address
  has_many :messages
end
