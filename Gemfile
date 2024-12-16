source 'https://rubygems.org'

ruby '2.5.0'
gem 'rails', '>= 5.0.0.rc2', '< 5.1'
gem 'bundler', '2.1.4'
gem 'sass-rails', '~> 5.0'            # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0'            # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.1.0'        # Use CoffeeScript for .coffee assets and views
gem 'jquery-rails'                    # Use jquery as the JavaScript library
gem 'turbolinks'                      # Turbolinks makes following links in your web application faster.
gem 'jquery-turbolinks'
gem 'bootstrap-sass'                  # Bootstrap
gem 'devise'                          # Devise (Authentication)
gem 'paperclip', '~> 5.2'             # Paperclip (File Attachment Gem) https://github.com/thoughtbot/paperclip
gem 'aws-sdk', '< 2.0'                # AMAZON AWS FOR IMAGE STORAGE
gem 'masonry-rails', '~> 0.2.0'       # JQUERY LIBRARY TO DISPLAY PINS AS A GRID
gem 'will_paginate', '~> 3.0'         # PAGINATION
gem 'will_paginate-bootstrap'         # PAGINATION BOOTSTRAP
gem 'sdoc', '~> 0.4.0', group: :doc   # bundle exec rake doc:rails generates the API under doc/api.

group :development, :test do
  gem 'sqlite3', '~> 1.3', '< 1.4'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development, :test do
  gem 'byebug'                          # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'web-console', '~> 2.0'           # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'spring'                          # Spring speeds up development by keeping your application running in the background.
end

