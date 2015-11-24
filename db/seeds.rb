users = [
	{username: 'riley', password: 'dog', password_confirmation: 'dog'}, 
	{username: 'person', password: 'dog', password_confirmation: 'dog'}, 
	{username: 'jakob', password: 'fire', password_confirmation: 'fire'}, 
	{username: 'taco', password: 'cheese', password_confirmation: 'cheese'}
]

exercises = [
	{name: 'burpees', body_focus: 'all'}, 
	{name: 'pushups', body_focus: 'upper'}, 
	{name: 'lunges', body_focus: 'lower'}, 
	{name: 'jump rope', body_focus: 'all'}
]

users.each do |user|
	User.create(user)
end

exercises.each do |exercise|
	Exercise.create(exercise)
end