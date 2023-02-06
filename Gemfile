source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.0"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.4", ">= 7.0.4.2"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Simple gem form https://github.com/heartcombo/simple_form 
gem 'simple_form'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
gem "redis", "~> 4.0"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
gem "sassc-rails"

gem 'jsbundling-rails' # necessário para bootstrap javascript
gem 'cssbundling-rails' # Instalar bootstrap 5

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  # Use sqlite3 as the database for Active Record
  gem "sqlite3", "~> 1.4"
end

group :development do
  gem 'rubocop'

  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # https://github.com/ryanb/letter_opener 
  gem "letter_opener", "~> 1.8"

  # https://github.com/flyerhzm/bullet
  gem "bullet"

end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

gem "kaminari", "~> 1.2"

gem "devise", "~> 4.8"


gem "pundit", "~> 2.3"


gem 'rolify', '~> 6.0'

gem "groupdate"

# postgres
gem 'pg', '~> 1.4', '>= 1.4.5', group: :production
gem "dockerfile-rails", ">= 1.0.0", :group => :development
