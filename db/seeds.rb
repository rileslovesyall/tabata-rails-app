users = [
	{username: 'riley', password: 'dog', password_confirmation: 'dog'}, 
	{username: 'jakob', password: 'fire', password_confirmation: 'fire'}, 
	{username: 'squanch', password: 'squanch', password_confirmation: 'dog'},
	{username: 'taco', password: 'cheese', password_confirmation: 'cheese'}
]

exercises = [
	{name: 'burpees', body_focus: 'all', description: 'Stand with your feet shoulder-width apart, weight in your heels, and your arms at your sides. Push your hips back, bend your knees, and lower your body into a squat. Place your hands on the floor directly in front of, and just inside, your feet. Shift your weight onto them. Jump your feet back to softly land on the balls of your feet in a plank position. Your body should form a straight line from your head to heels. Be careful not to let your back sag or you butt stick up in the air, as both can keep you from effectively working your core. Jump your feet back so that they land just outside of your hands. Reach your arms over head and explosively jump up into the air. Land and immediately lower back into a squat for your next rep.'}, 
	{name: 'pushups', body_focus: 'upper', description:'Place hands on a box, bench, or step slightly wider than and in line with shoulders. Slowly lower body until your chest nearly touches the bench. Pause at the bottom, and then push back up to the starting position as quickly as possible.'}, 
	{name: 'lunges', body_focus: 'lower', description: 'Place the hands on the hips, pull the shoulders back and stand tall. Step forwards with your right leg and slowly lower the body until the front knee is bent to 90 degrees. Make sure front knee is in line with your foot and not extending forward over the toe. The back knee should never touch the floor. Push yourself back up to the starting position as quickly but safely as possible. Repeat with the left leg and continue alternating.'}, 
	{name: 'jump rope', body_focus: 'all', description: "Keeping your core tight, well, jump some rope. Go as quickly as you can while remembering to breathe and keeping your spine long.",user_id: 1},
	{name: 'plank', body_focus: 'core', description:'Hold a plank for your each 20 seconds on. Switch to knees from toes to reduce intensity.'},
	{name: 'mountain climber', body_focus: 'all', description:'Assume a press up position so your hands are directly under your chest at shoulder width apart with straight arms. Your body should form a straight line from your shoulders to your ankle. Lift your right foot off the floor and slowly raise your knee as close to your chest as you can. Return to the starting position and repeat with your left leg. Continue alternating.'},
	{name: 'split squat', body_focus: 'lower', description: 'Stand in a staggered stance with front foot on a box or step. Your feet should be 2 to 3 feet apart, front knee slightly bent. Slowly lower your body as far as you can. Pause, then push back up to the starting position as quickly as you can. Switch legs between sets.'},
	{name: 'bodyweight squat', body_focus: 'lower', description: 'Stand with your feet slightly wider than your hips.  Your toes should be pointed  slightly outward – about 5 to 20 degrees outward. Now, breathe in, break at your hip and push your butt back. As you squat down, focus on keeping your knees in line with your feet. (Knees in line with toes!) Squat down until your hip joint is lower than your knees. Remember: keep your body and core tight the entire time, and stand back up. Whew.'},
	{name: 'frogger', body_focus: 'upper', description: 'Kneel down and place your hands shoulder-width apart on the ground in front of you. Rock back and forth between your hands and knees to get a sense of how your weight shifts on and off your hands. Don’t relax your shoulders, but rather, push down forcefully into the ground and feel how your stomach tightens as you lean forward more into your hands. Now, as you rock forward onto your hands, jump off your toes and bring your feet up toward your hands. The key here is to jump with control – the slower the better. This emphasizes using the strength of your arms, shoulders, and core to perform the move and not just the momentum of your jumping. This is why this is a great move for entry to a handstand, it builds up the exact strength you need in the right pattern.'},
	{name: 'core row', body_focus: 'all', description: 'Sit down and place feet hip distance apart about 12 inches in front of you. Toes can touch the ground, or lift to increase intensity. Engage core and keep the back and neck straight throughout. Inhale, then exhale twisting to the right and moving your arms as if you were rowing an oar. Inhale twisting back to center, then exhale and row to the left. Repeat. Maintain breathe throughout the movement.'},
	{name: 'front scales', body_focus: 'lower', description: 'Begin by standing tall. Lock both knees and engage your core. Raise one leg in front of you fairly quickly, but only as high as you can comfortably go. Lower your leg slowly and with control. Keep shoulders back and down. Breathe. Above all, make it pretty. The control you develop by performing this movement deliberately and beautifully is the real secret sauce here. Anyone can lift a leg up, but doing so with poise and control is the key to improvement.'},
	{name: 'back scales', body_focus: 'lower', description: 'Begin by standing tall. Lock both knees and engage your core. Raise one leg behind you fairly quickly, but only as high as you can comfortably go. Lower your leg slowly and with control. Keep shoulders back and down. Breathe. Above all, make it pretty. The control you develop by performing this movement deliberately and beautifully is the real secret sauce here. Anyone can lift a leg up, but doing so with poise and control is the key to improvement.'},
	{name: 'l-sit', body_focus: 'upper', description: 'With hands on floor or blocks by the hips and legs extended straight in front, tighten all core muscles and begin to push up from the ground. Keep legs parallel to the floor, shoulders strong, and butt beneath the shoulders. Hold and slowly lower. Repeat.'}
]

workouts = [
	{name: 'Fancy Pants Workout', user_id: '1'}, 
	{name: 'Incredible Hulk'}, 
	{name: 'Booty Blast', user_id: '2'}, 
	{name: 'Squanch', user_id: '3'}
]

exercises_workout = [
	{exercise_id: 1, workout_id: 2}, 
	{exercise_id: 2, workout_id: 2}, 
	{exercise_id: 4, workout_id: 1}, 
	{exercise_id: 3, workout_id: 1},
	{exercise_id: 1, workout_id: 3}, 
	{exercise_id: 2, workout_id: 4}, 
	{exercise_id: 4, workout_id: 4}, 
	{exercise_id: 3, workout_id: 3},
	{exercise_id: 1, workout_id: 1}, 
	{exercise_id: 2, workout_id: 3}, 
	{exercise_id: 4, workout_id: 2}, 
	{exercise_id: 3, workout_id: 4},
	]

completed_workouts = [
	{workout_id: 1, user_id: 1},
	{workout_id: 2, user_id: 1},
	{workout_id: 3, user_id: 2},
	{workout_id: 4, user_id: 2},
]

users.each do |user|
	User.create(user)
end

exercises.each do |exercise|
	Exercise.create(exercise)
end

workouts.each do |workout|
	Workout.create(workout)
end

exercises_workout.each do |ex_w|
	ExercisesWorkout.create(ex_w)
end

completed_workouts.each do |com|
	CompletedWorkout.create(com)
end
