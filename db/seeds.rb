users = [
	{username: 'riley', password: 'dog', password_confirmation: 'dog'}, 
	{username: 'person', password: 'dog', password_confirmation: 'dog'}, 
	{username: 'jakob', password: 'fire', password_confirmation: 'fire'}, 
	{username: 'taco', password: 'cheese', password_confirmation: 'cheese'}
]

exercises = [
	{name: 'burpees', body_focus: 'all', description: 'This is how you do a burpee.'}, 
	{name: 'pushups', body_focus: 'upper', description:'This is how you do a pushup.'}, 
	{name: 'lunges', body_focus: 'lower', description: 'This is how you do a lunge.', user_id: 2}, 
	{name: 'jump rope', body_focus: 'all', description: "This is how you jump some rope.",user_id: 1},
	{name: 'plank', body_focus: 'core', description:'Hold a plank for your each 20 seconds on. Switch to knees from toes to reduce intensity.'},
	{name: 'mountain climber', body_focus: 'all', description:'This is how you do a mountain climber.'}

]

workouts = [
	{name: "riley's fav", user_id: 1},
]

workouts.each do |workout|
	Workout.create(workout)
end

users.each do |user|
	User.create(user)
end

exercises.each do |exercise|
	Exercise.create(exercise)
end
