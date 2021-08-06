# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
	ruby 2.6.6p146

* Rails version
	Rails 5.2.6

* Gem install
	run = bundle install

* Create Database
	run = rails db:create
	run = rails db:migrate

* To run rails server
	rails s  
	run on browser: localhost:3000 

* To run job
	when run in development env -
		whenever --update-crontab --set environment='development' 
	crontab -l

* To run test cases
	run - bundle exec rspec spec
