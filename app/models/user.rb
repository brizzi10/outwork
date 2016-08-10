class User < ActiveRecord::Base
  has_many :workouts
  has_many :drills, through: :workouts
end
