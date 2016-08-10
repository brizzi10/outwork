class Workout < ActiveRecord::Base
  belongs_to :drill
  belongs_to :user
end
