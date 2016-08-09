def get_drill_data
  drill_data = {
    "Ball Handling"=>[{
                  :name=>"Ball Wraps",
                  :description=>"Perform each drill for 30 seconds",
                  :image_url=>"http://www.getfitivity.com/images/blog/posts/full/06_basketball_main.png"
                }],

  "Shooting"=>[{
                  :name=>"Beat the Pro",
                  :description=>"Shoot 1 shot from each of the 5 spots. A make awards you 1 point, a miss awards the 'Pro' 2 points. First to 22 wins!",
                  :image_url=>"http://www.betterbasketballcoaching.com/images/Shooting_spots.jpg"
                }],
  "1 on 1 Moves"=>[{
                  :name=>"Chair Moves",
                  :description=>"Set a chair at the top of the key. Use a crossover to go past the simulated defender. Shoot 2 layups, 2 elbow jump shots, and 2 pro hops from the right side, then repeat for the left",
                  :image_url=>"http://upl.stack.com/wp-content/uploads/2012/09/attacking-the-chair-629x541.jpg"
                }],
  "Post Moves"=>[{
                  :name=>"2 Chair Drop Step",
                  :description=>"Set up a chair at each block, facing the hoop, with a ball resting on it. Pick up the ball with your back facing the basket, then use a power dribble + drop step to attack the basket and finish.",
                  :image_url=>"https://i.ytimg.com/vi/imrqGrNuvp0/maxresdefault.jpg"
                }],
  "Conditioning"=>[{
                  :name=>"Slingshot",
                  :description=>"Refer to the image. Perform each part separately until you understand it completely, then try to perform all 4 without stopping",
                  :image_url=>"http://upl.stack.com/wp-content/uploads/2012/10/Slingshot-Conditioning-Drill-e1351883617863.jpg"
                }]
}
  return drill_data
end
