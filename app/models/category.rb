class Category < ApplicationRecord
  has_many :drills
  validates :name, :image_url, presence: true
end
