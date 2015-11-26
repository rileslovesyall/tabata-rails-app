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

users_exercises = [
	{user_id: 1, exercise_id: 1, is_favorite?: true},
	{user_id: 1, exercise_id: 4},
	{user_id: 2, exercise_id: 2, is_favorite?: true},
	{user_id: 3, exercise_id: 3}
]

users.each do |user|
	User.create(user)
end

exercises.each do |exercise|
	Exercise.create(exercise)
end

