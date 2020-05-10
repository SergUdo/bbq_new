source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
# Use sqlite3 as the database for Active Record
gem 'devise'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'bootstrap_form'
gem 'jbuilder', '~> 2.7'
gem 'twitter-bootstrap-rails'
gem 'rails-i18n' , ' ~> 6.0.0 '
gem 'pundit'
gem 'resque'
# Use Redis adapter to run Action Cable in production
 gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'rmagick'
gem 'carrierwave'
gem 'therubyracer'
gem 'mini_magick'
gem 'cloudinary', '~> 1.13', '>= 1.13.2'
gem 'sendgrid-ruby'
gem 'uglifier'
gem 'coffee-rails'

# Use Active Storage variant
 gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rubocop'
  gem 'rubocop-minitest' # gem 'rubocop-rspec'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'sqlite3', '~> 1.4'
end

group :development do
  gem 'capistrano', '~> 3.13', require: false
  gem 'capistrano-rails', '~> 1.4', require: false
  gem 'capistrano-passenger'
  gem 'capistrano-rbenv', '~> 2.1'
  gem 'capistrano-bundler', '~> 1.6'
  gem "capistrano-resque", "~> 0.2.3", require: false
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg'
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
