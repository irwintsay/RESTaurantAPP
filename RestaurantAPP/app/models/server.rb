class Server < ActiveRecord::Base
  has_secure_password
  has_many :tables
end