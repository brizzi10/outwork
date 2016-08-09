class Drill < ApplicationRecord
  belongs_to :category
  validates :name, :image_url, :description, presence: true
end
