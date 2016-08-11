# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def get_category_data
  category_data = {
    "Defense" => {
                    name: "Defense",
                    image_url: "http://learntocoachbasketball.com/wp-content/uploads/2016/02/youth-basketball-drills.jpg"
                  },

    "Ball Handling" => {
                    name: "Ball Handling",
                    image_url: "http://www.mccrackencamps.com/assets/programs/IMG_0680-001.JPG"
                  },
    "Shooting" => {
                    name: "Shooting",
                    image_url: "http://upl.stack.com/wp-content/uploads/2013/08/Basketball-Shooting-Drill-629x463.jpg"
                  },
    "1 on 1 Moves" => {
                    name: "1 on 1 Moves",
                    image_url: "http://images4.fanpop.com/image/quiz/505000/505203_1291552050962_360_240.jpg",
                  },
    "Post Moves" => {
                    name: "Post Moves",
                    image_url: "https://basketballhq.com/wp-content/uploads/2015/12/Basketball-Post-Move-Drills.jpg"
                  },
    "Conditioning" => {
                    name: "Conditioning",
                    image_url: "http://www.coachpintar.com/wp-content/uploads/2013/06/bilde-1-500x326.jpg"
                  }
    }
  return category_data
end
