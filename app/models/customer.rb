class Customer < ActiveRecord::Base
  belongs_to :table
  has_many :items, through: :orders
end
