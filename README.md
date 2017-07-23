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

As this is a simple application that don't need great data persistence. The [SQlite3](https://www.sqlite.org/) has been used 
that is the default database when a new Ruby on Rails application is created.