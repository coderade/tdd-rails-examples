# Test-driven Rails with RSpec, Capybara and Cucumber Examples

This project contains some examples of how use TDD with Ruby on Rails.

## Used technologies

The main technologies and Rails gems used in this project are:

### Development
* [Rails 5](http://rubyonrails.org/) - a web-application framework that includes everything needed to create 
database-backed web applications according to the Model-View-Controller (MVC) pattern.
* [Devise](https://github.com/plataformatec/devise) - flexible authentication solution for Rails with Warden.   
* [CarrierWave](https://github.com/carrierwaveuploader/carrierwave) - classier solution for file uploads for Rails,
Sinatra and other Ruby web frameworks.
* [The Twitter Ruby Gem](https://github.com/sferik/twitter) - a Ruby interface to the Twitter API.
* [ActiveModelSerializers](https://github.com/rails-api/active_model_serializers) - ActiveModel::Serializer 
implementation and Rails hooks.

### Testing
* [Capybara](https://github.com/teamcapybara/capybara) - acceptance test framework for web applications.
* [Rspec](https://github.com/rspec/rspec-rails) - testing framework for Rails 3.x, 4.x and 5.0.
* [Cucumber](https://cucumber.io/) - software tool used by computer programmers for testing other software. It runs 
automated acceptance tests written in a behavior-driven development (BDD) style 
* [Minitest](https://github.com/seattlerb/minitest) - provides a complete suite of testing facilities supporting TDD, 
BDD, mocking, and benchmarking.
* [Database Cleaner](https://github.com/DatabaseCleaner/database_cleaner) - strategies for cleaning databases in Ruby.
 Can be used to ensure a clean state for testing.
* [Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers) - provides RSpec- and Minitest-compatible 
one-liners that test common Rails functionality. These tests would otherwise be much longer, more complex
and error-prone.
* [vcr](https://github.com/vcr/vcr) - use to record the test suite's HTTP interactions and replay them during future
test runs for fast, deterministic and accurate tests.
* [WebMock](https://github.com/bblimke/webmock) - library for stubbing and setting expectations on HTTP requests in Ruby.
* [Selenium](https://github.com/SeleniumHQ/selenium) -  tool for writing automated tests of websites. It aims to mimic 
the behaviour of a real user, and as such interacts with the HTML of the application.
* [Factory Girl](https://github.com/thoughtbot/factory_girl_rails) - a library for setting up Ruby objects as test data. 
* [Rails Controller Testing](https://github.com/rails/rails-controller-testing) - brings back `assigns` and `assert_template` 
to the Rails tests.  

### Database      

As this is a simple application that don't need great data persistence the default database used when a new Ruby on Rails
application is created has been used: [SQlite3](https://www.sqlite.org/).

##  Examples

### String Cauculator - Simple Red Green Refactor example with Minitest

Simple Red Green Refactor example with Minitest. 

See the [string_calculator.rb](string_calculator.rb) file.

###### Running

To run, on the root of the project enter:

    ruby string_calculator.rb
    
### RSpec examples

There is many RSpec examples testing examples on this project, for instance 79 specs. All they are running with success.

To run all the specs on the root of the project enter `rspec`.

> There are three specs failing, they are related with the Third API testing with Twitter.

#### Playground - Simple RSpec example

Simple example with RSpec.


See the following files for a better understanding:

* `playground_spec.rb`=>  [playground_spec.rb](spec/playground_spec.rb) 
* `playground.rb` =>  [lib/playground.rb](lib/playground.rb)

    
###### Running

To run this spec, on the root of the project enter:

    rspec spec/playground_spec.rb 


#### Bowling Game - Advanced RSpec example

More complex example with RSpec based on a bowling game. 


See the following files for a better understanding:

* `bowling_game_spec.rb`=>  [bowling_game_spec.rb](spec/bowling_game_spec.rb)
* `bowling_game.rb` =>  [lib/bowling_game.rb](lib/bowling_game.rb)

    
###### Running

To run this spec, on the root of the project enter:

    rspec spec/bowling_game_spec.rb 


#### Create Achievement spec

Spec testing the achievement creation

See the following files for a better understanding:

###### Main files:

* `create_achievement_spec.rb`=>  [spec/create_achievement_spec.rb](spec/create_achievement_spec.rb)

###### Support files:
* `login_form.rb` =>  [spec/support/login_form.rb](spec/support/login_form.rb)
* `new_achievement_form.rb` =>  [spec/support/new_achievement_form.rb](spec/support/new_achievement_form.rb)

###### Factory files:
* `achievements.rb` =>  [spec/factories/achievements.rb](spec/factories/achievements.rb) 
* `users.rb` =>  [spec/factories/users.rb](spec/factories/users.rb) 
    
###### Running

To run this spec, on the root of the project enter:

    rspec spec/create_achievement_spec.rb 

> This spec is failing, the fail is related with the Third API testing with Twitter.