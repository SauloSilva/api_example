source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'pg', '1.2.3'
gem 'puma', '~> 4.1'
gem 'will_paginate', '~> 3.1.0'
gem 'active_model_serializers', '0.10.10'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'

# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

gem 'bootsnap', '>= 1.4.2', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

gem 'faker', '2.13.0'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec', '3.9.0'
  gem 'rspec-rails', '4.0.1'
  gem 'factory_bot_rails', '6.1.0'
  gem 'shoulda-matchers', '4.3.0'
  gem 'rails-controller-testing', '1.0.5'
  gem 'database_cleaner', '1.8.5'
  gem 'fuubar', '2.5.0'
  gem 'simplecov', '0.18.5'
  gem 'rspec-simplecov', '0.2.2'
  gem 'bullet', '6.1'
  gem 'json-schema', '2.8.1'
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem "sentry-raven"
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
