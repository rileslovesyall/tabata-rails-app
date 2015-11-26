users = [
	{username: 'riley', password: 'dog', password_confirmation: 'dog'}, 
	{username: 'person', password: 'dog', password_confirmation: 'dog'}, 
	{username: 'jakob', password: 'fire', password_confirmation: 'fire'}, 
	{username: 'taco', password: 'cheese', password_confirmation: 'cheese'}
]

exercises = [
	{name: 'burpees', body_focus: 'all'}, 
	{name: 'pushups', body_focus: 'upper'}, 
	{name: 'lunges', body_focus: 'lower', user_id: 2}, 
	{name: 'jump rope', body_focus: 'all', user_id: 1}
]

workouts = [
	{name: "riley's fav"},
	{name: 'burpees for days'},
	{name: 'another workout'}
]

# exercises_workouts = [
# 	{exercise_id: 1, workout_id: 1},
# 	{exercise_id: 1, workout_id: 2},
# 	{exercise_id: 3, workout_id: 4},
# 	{exercise_id: 4, workout_id: 3}
# ]

workouts.each do |workout|
	Workout.create(workout)
end

users.each do |user|
	User.create(user)
end

exercises.each do |exercise|
	Exercise.create(exercise)
end

# exercises_workouts.each do |ex_work|
# 	ExerciseWorkout.create(ex_work)
# end
