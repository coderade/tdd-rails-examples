source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end



# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.4', '>= 6.0.4.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.1', '>= 5.1.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'simple_form', '>= 5.1.0'

# RedCarpet gem
gem 'redcarpet', '>= 3.5.1'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2', '>= 4.2.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7', '>= 2.7.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'jquery-rails', '>= 4.4.0'


# Add the bootstrap
gem 'bootstrap', '~> 4.3.1.0'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'devise', '>= 4.8.0'
gem 'carrierwave', '>= 2.2.2'
gem 'twitter', '>= 6.1.0'
gem 'active_model_serializers', '>= 0.10.12'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'selenium-webdriver', '>= 3.4.4'
  gem 'factory_girl_rails', '>= 4.9.0'
  gem 'rspec-rails', '~> 3.9', '>= 3.9.1'
  gem 'rails-controller-testing', '>= 1.0.5'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  gem 'listen', '>= 3.0.5', '< 3.2'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '>= 2.0.2'
  gem 'spring-watcher-listen', '~> 2.0.1'
end

group :test do
  gem 'capybara', '~> 2.18', '>= 2.18.0'
  gem 'cucumber-rails', '>= 2.4.0', require: false
  gem 'database_cleaner'
  gem 'shoulda-matchers', '>= 3.1.2', require: false
	gem 'vcr'
	gem 'webmock', '>= 3.0.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
