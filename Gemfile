source :rubygems

gem 'rails', '3.1.1'
gem 'therubyracer'

gem 'pg'

gem 'jquery-rails'
gem 'compass'

gem 'friendly_id', '~> 4.0.0.beta14'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end

group :development do
  gem 'capistrano'
  gem 'capistrano-ext' # multi-stage
end

group :test, :development do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
end
