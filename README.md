Tabata Workout App 
==================

Purpose
-------

This app was built to allow users to quickly create a short workout routine, and then save that routine. 

Organization
------------

**Users** Users create an account, through which they can log-in, save workouts, create new exercises, and store when they did a certain workout. In the future, I'd like them to be able to create workouts, schedule workouts for the future, and maybe sync with calendar apps like Google Calendar or health apps like Runkeeper. 

**Workouts** Workouts are a collection of exercises. They can belong to the User who created them, and they can have any number of exercises, but not duplicates. 

**Exercises** Exercises have a name, a description, and an area of the body they work. In the future, I would like to use the body_area column to help the user choose which sorts of exercises they want to show up in their workout. 

Installation 
------------

This is written in Ruby 2.2.3 using Rails 4.2.5

Installation should be relatively simple. Git clone the repo onto your computer, run ```gem install bundler``` then ```bundle install``` and you should be good to go. 


Contributing to Development
---------------------------

This is a work in progress, and any help is appreciated. I've got some issues already queued up that you can check out, or you can create your own if there are features you'd like to add or bugs you find. 