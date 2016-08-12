# README

For this project, I used a one-to-many nested resource, as well as a many-to-many
join table. It made a lot of sense to nest drills within categories, since the
only way a drill could be accessed would be through a specific sliver of a
basketball workout.

I do think that my join table, workout, could have been named better. Initially I
wanted to incorporate the selected drills into individual workouts, but due to
some constraints it remains a feature that is not implemented at this time.

The only real problem I encountered (besides tracking down images for all the drills)
was attempting to display the workouts on the user show page. Initially, this seemed
like a solid idea, since each user would have their own set of drills, but for some
reason I was unable to pass all of the necessary parameters.

Each workout had an attribute, "comment", and since the workout ID was not being passed
to the user show page (although user ID and drill ID were), it was impossible to populate
the show with relevant comments. I was able to circumvent this obstacle with the hidden form
workaround, but I am definitely still a bit stumped as to why my more conventional attempts
using the controller were not successful.

The only thing that I didn't like about my approach was simply the lackluster of creativity
I felt able to impart into this project. Project 1 felt like I had all of these avenues
to do different stuff, whereas this assignment I think I felt a little bit trapped by rails.
This obviously is only a result of my own inexperience, but it just felt like since there were
so many conventions, and pre-built methods, I was more focused on sticking to them than
being able to try a bunch of different stuff. For instance, I tried using "categorys",
which obviously is not spelled correctly, but I wasn't sure how rails would react to the plural
of category. After a ton of errors, I realized that rails was expecting me to use categories,
which although impressive was a bit annoying. I would much rather name all of my own functions, and
rely on my own naming conventions to keep track of it all.

This project definitely motivated me to practice more with rails though, because after seeing
how creative some of the other projects were I definitely was wrong to feel so inhibited by the
rails skeleton. Like I said, I am definitely aware that the illusionary limits merely exist due
to my own (hopefully temporary) shortcomings with rails.
