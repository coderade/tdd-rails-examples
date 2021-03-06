# Test-driven Rails with RSpec, Capybara and Cucumber Examples

![Not Maintained](https://img.shields.io/badge/Maintenance%20Level-Not%20Maintained-yellow.svg)

**This project has been developed in 2015 for the purpose of showing some examples of the TDD process with Rails on the version 5 and is not maintained anymore. Some libraries are being updated using the [Dependabot](https://dependabot.com/) and [Snyk.io](https://snyk.io/) services, but no further tests are being done.**


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

As this is a simple application that don't need great data persistence. The [SQlite3](https://www.sqlite.org/) has been used 
that is the default database when a new Ruby on Rails application is created.

##  Examples

### String Cauculator - Simple Red Green Refactor example with Minitest

Simple Red Green Refactor example with Minitest. 

###### Test file:

* `string_calculator.rb`=>  [string_calculator.rb](string_calculator.rb)


##### Running

To run, on the root of the project enter:

    ruby string_calculator.rb
    
### RSpec examples

There is many RSpec examples testing examples on this project, for instance 79 specs. All they are running with success.

To run all the specs on the root of the project enter `rspec`.

> There are three specs failing, they are related with the Third API testing with Twitter.

#### Playground - Simple RSpec example

Simple example with RSpec.


See the following files for a better understanding:

###### Spec file:

* `playground_spec.rb`=>  [playground_spec.rb](spec/playground_spec.rb) 

###### Support files:

* `playground.rb` =>  [lib/playground.rb](lib/playground.rb)

    
##### Running

To run this spec, on the root of the project enter:

    rspec spec/playground_spec.rb 


#### Bowling Game - Advanced RSpec example

More complex example with RSpec based on a bowling game. 


See the following files for a better understanding:

###### Spec file:

* `bowling_game_spec.rb`=>  [bowling_game_spec.rb](spec/bowling_game_spec.rb)

###### Support files:

* `bowling_game.rb` =>  [lib/bowling_game.rb](lib/bowling_game.rb)

    
##### Running

To run this spec, on the root of the project enter:

    rspec spec/bowling_game_spec.rb 


#### Create Achievement spec

Spec testing the achievement creation, authentication and authorization.

See the following files for a better understanding:

###### Spec file:

* `create_achievement_spec.rb`=>  [spec/create_achievement_spec.rb](spec/create_achievement_spec.rb)

###### Support files:
* `login_form.rb` =>  [spec/support/login_form.rb](spec/support/login_form.rb)
* `new_achievement_form.rb` =>  [spec/support/new_achievement_form.rb](spec/support/new_achievement_form.rb)

###### Factory files:
* `achievements.rb` =>  [spec/factories/achievements.rb](spec/factories/achievements.rb) 
* `users.rb` =>  [spec/factories/users.rb](spec/factories/users.rb) 
    
##### Running

To run this spec, on the root of the project enter:

    rspec spec/create_achievement_spec.rb 

> This spec is failing, the fail is related with the Third API testing with Twitter.



#### Achievements Controller spec

Spec testing the Achievement controller, more specifically your CRUD operations like show, create, update, edit and destroy 
methods in addition to authentication and authorization.

See the following files for a better understanding:

###### Spec file:

* `achievements_controller_spec.rb`=>  [spec/controllers/achievements_controller_spec.rb](spec/controllers/achievements_controller_spec.rb)

###### Controller

* `achievements_controller.rb`=>  [app/controllers/achievements_controller.rb](app/controllers/achievements_controller.rb)

###### Support files:
* `login_form.rb` =>  [spec/support/login_form.rb](spec/support/login_form.rb)
* `new_achievement_form.rb` =>  [spec/support/new_achievement_form.rb](spec/support/new_achievement_form.rb)

###### Factory files:
* `achievements.rb` =>  [spec/factories/achievements.rb](spec/factories/achievements.rb) 
* `users.rb` =>  [spec/factories/users.rb](spec/factories/users.rb) 
    
##### Running

To run this spec, on the root of the project enter:

    rspec spec/controllers/encouragements_controller_spec.rb 


#### Achievements Model spec

Spec testing the Achievement model, more specifically the validations, associations, instance methods, db queries  using
some helpers like the Shoulda-matchers Gem.

See the following files for a better understanding:

###### Spec file:

* `achievement_spec.rb`=>  [spec/models/achievement_spec.rb](spec/models/achievement_spec.rb)

###### Model

* `achievement.rb`=>  [app/models/achievement.rb](app/models/achievement.rb)

###### Factory files:
* `achievements.rb` =>  [spec/factories/achievements.rb](spec/factories/achievements.rb) 
* `users.rb` =>  [spec/factories/users.rb](spec/factories/users.rb) 
    
##### Running

To run this spec, on the root of the project enter:

    rspec spec/models/achievement_spec.rb
    

### Isolation Tests

There are some isolation tests examples using the Mock and Stubs concepts created on the 
[mock-and-stubs](https://github.com/coderade/tdd-rails-examples/tree/mocks-and-stubs) branch.

For more information see: [Isolation tests examples](https://github.com/coderade/tdd-rails-examples/tree/mocks-and-stubs#isolation-testing-examples-with-rspec)

### Cucumber examples

#### Reading other achievements feature

Example of a feature with Cucumber testing if a guest user can read other achievements.

See the following files for a better understanding:

###### Feature file:

* `achievement_page.feature`=>  [features/achievement_page.feature](features/achievement_page.feature)

###### Support file:
* `achievements_steps.rb`=>  [features/step_definitions/achievements_steps.rb](features/step_definitions/achievements_steps.rb)


##### Running

To run this feature, on the root of the project enter:

    rails cucumber

