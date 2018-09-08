[![Build Status](https://travis-ci.org/laitilari/gymtracker.svg?branch=master)](https://travis-ci.org/laitilari/gymtracker)
[![Code Climate](https://codeclimate.com/github/laitilari/gymtracker.png)](https://codeclimate.com/github/laitilari/gymtracker)
[![Coverage Status](https://coveralls.io/repos/github/laitilari/gymtracker/badge.svg?branch=master)](https://coveralls.io/github/laitilari/gymtracker?branch=master)

https://gymtrackerrailsapp.herokuapp.com/

# Gymtracker

Gymtracker is an app for weightlifters to keep score about their results and to compare them to the results of other users.

### Instructions

To start using gymtracker, you need to create an account first by clicking sign up. Then sign in to access the application. After that you can add new gyms or new moves from their index pages. To add a new result, open up a sub menu by clicking your username in the navigation bar and then click 'New result'. You can join a gym the same way, or directly from a gym's page. Click results to see how your results compare against the average results of all users, or see if you have the max weight of a lift! To check other users' results, click on 'Users'.

### Class diagram
![ClassDiagram](https://github.com/laitilari/gymtracker/blob/master/classDiagram.png)

### Testing

In testing of this app the goal has been to reach and maintain 90 % coverage. Rails's rspec scaffold has been made use of and edited accordingly to go with the app. This has allowed quite thorough testing with minimum work. Many test files have been made by hand, too. System testing has been made with capybara gem.

