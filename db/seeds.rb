# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# data
require_relative './drill_data.rb'
require_relative './category_data.rb'

Drill.destroy_all
Category.destroy_all

drill_data = get_drill_data()
category_data = get_category_data()

drill_data.each_pair do |category_name, drills|
  info = category_data[category_name]
  current_category = Category.create!({
    name:         info[:name],
    image_url:    info[:image_url]
  })

  drills.each do |drill|
    Drill.create!({
      name:        drill[:name],
      description: drill[:description],
      image_url:   drill[:image_url],
      category:    current_category
    })
  end
end
