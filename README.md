# Dispatcher App

Things you may want to cover:

* Ruby version
	ruby 2.6.6

* Rails version
	Rails 5.2.6

* Gem install
	`bundle install`

* Create Database
	`rails db:create`
	`rails db:migrate`

* To run rails server
	rails s  
	run on browser: localhost:3000 

* To run job
	when run in development env -
		whenever --update-crontab --set environment='development' 
	crontab -l

* To run test cases
	`bundle exec rspec spec`

# Service

* https://github.com/mkpdev/Ship-Dispatcher/blob/master/app/services/ship_create_service.rb

	This service call ShipCreate microservice to fetch arrived ship and store in database
	with status arrived.

* ProcessShipService
	This service call PrcoessShip microservice to process a ship.
	It take queue status ship and return status proceed after processing.

# Spec

* CreateShipServiceSpec 
	This spec is check the ShipCreate microservice response and store in the VCR cassette
	and check ship status should be `arrived`.

* ProcessShipServiceSpec
	This spec is check the ProcessShip microservice response and store in the VCR cassette
	and check ship status should be `processed`.	

