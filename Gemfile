source "https://rubygems.org"

ruby "3.2.2"
# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.1.1"
# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"
# Use sqlite3 as the database for Active Record
gem "sqlite3", "~> 1.4"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
gem "pg", "~> 1.1"
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"
gem "sassc-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails" 
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
gem "image_processing", "~> 1.2"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"
gem "devise"
# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"
# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"
# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"
# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "byebug", "~> 11.1",">= 11.1.3"
  gem "pry", "~> 0.14.2"
  gem "pry-byebug", "~> 3.10",">= 3.10.1"
  gem "pry-rails", "~> 0.3.9"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem  "web-console"
  gem  "spring"
  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  gem "capybara" 
  gem "selenium-webdriver" 
  gem "webdrivers", "= 5.3.0"
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data"