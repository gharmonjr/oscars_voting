source "https://rubygems.org"

ruby "3.4.2"

# Use the latest stable Rails 8.x
gem "rails", "~> 8.0.0"

# The original asset pipeline for Rails
gem "sprockets-rails"

# Use sqlite3 as the database for Active Record
gem "sqlite3", ">= 1.4"

# Use the Puma web server
gem "puma", ">= 5.0"

# Use JavaScript with ESM import maps
gem "importmap-rails"

# Hotwire's SPA-like page accelerator
gem "turbo-rails"

# Hotwire's modest JavaScript framework
gem "stimulus-rails"

# Build JSON APIs with ease
gem "jbuilder"

# Add bcrypt for password hashing
gem "bcrypt", "~> 3.1.7"

# Linting
gem "standardrb"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

group :development, :test do
  # Debugging tool
  gem "debug", platforms: %i[ mri windows ]
end

group :development do
  # Use console on exceptions pages
  gem "web-console"
end
