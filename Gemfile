source 'https://rubygems.org'

ruby '2.3.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use sqlite3 as the database for Active Record
gem 'sqlite3' , group: :development
# Use SCSS for stylesheets
gem 'bootstrap-sass', '~> 3.3.6'
gem 'sass-rails', '>= 3.2'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'adminlte2-rails', :git => 'git://github.com/mt-davis/adminlte2-rails.git'
#gem 'bootstrap-wysihtml5-rails', github: 'nerian/bootstrap-wysihtml5-rails'
#gem 'jquery-slimscroll-rails'
gem 'ckeditor'
gem 'devise'
gem 'jquery-turbolinks'
gem 'carrierwave'
gem "fog-aws"
gem "figaro"
gem "mini_magick"
# Use jquery as the JavaScript library
#gem 'jquery-rails'
#gem 'jquery-rails', '~> 4.1', '>= 4.1.1'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'rails_12factor', group: :production
gem 'pg', group: :production
gem 'puma', group: :production
gem 'newrelic_rpm'
gem 'activeadmin', github: 'activeadmin'

group :development, :test do
  %w[rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support].each do |lib|
  gem lib, :git => "https://github.com/rspec/#{lib}.git", :branch => 'master'
end
  gem 'byebug'
end

#group :development, :test do
#  gem 'rspec-rails', '~> 3.5'
#end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
