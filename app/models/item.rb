class Item < ActiveRecord::Base
  validates :name, :image_url, :place, :special, :user, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :rating, numericality: {greater_than_or_equal_to: 0.1}
end


