class Drill < ApplicationRecord
  belongs_to :category
  has_many :workouts
  has_many :users, through: :workouts
  validates :name, :image_url, :description, presence: true
end
