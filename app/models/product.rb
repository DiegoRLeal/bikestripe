class Product < ApplicationRecord
  monetize :price_cents
  has_many :carts
  has_many :users, through: :user_carts
  belongs_to :user
  has_many_attached :photos
end
