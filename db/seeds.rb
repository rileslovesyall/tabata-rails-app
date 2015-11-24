users = [
	{username: 'riley', password: 'dog', password_confirmation: 'dog'}, 
	{username: 'person', password: 'dog', password_confirmation: 'dog'}, 
	{username: 'jakob', password: 'fire', password_confirmation: 'fire'}, 
	{username: 'taco', password: 'cheese', password_confirmation: 'cheese'}
]

exercises = [
	{}, 
	{}, 
	{}, 
	{}
]

users.each do |user|
	User.create(user)
end

exercises.each do |exercise|
	Exercise.create(exercise)
end