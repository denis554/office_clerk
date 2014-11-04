source 'https://rubygems.org'

gemspec

gem 'rails'
gem 'sqlite3'

# extensions, reporting, printing
gem 'accountant_clerk' , github: "rubyclerks/accountant_clerk"
#gem 'accountant_clerk' , path: "../accountant_clerk"

gem 'print_clerk' , github: "rubyclerks/print_clerk"
#gem 'print_clerk' , path: "../print_clerk"

gem 'post_clerk' , github: "rubyclerks/post_clerk"
#gem 'post_clerk' , path: "../post_clerk"


# template
gem "ransack", github: "activerecord-hackery/ransack", branch: "rails-4"

#misc
gem "valid_email" , :require => 'valid_email/email_validator' #no mx checking
gem 'db_fixtures_dump' , :github => 'rubyclerks/db_fixtures_dump' #backup

#asset / production reelated
gem "therubyracer" 
gem "libv8" , "3.16.14.3"
gem "rb-readline"
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails'

#one wishes one would not need it. alas . . .
gem 'rack-attack'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem "i18n-tasks"
  gem 'quiet_assets'
  gem 'rails_layout'
#  gem "jeweler", "> 1.6.4"
end
group :development, :test do
  gem "spring"
  gem "spring-commands-rspec"
end
group :test do
#  gem "poltergeist"
#  gem "phantomjs"
  gem 'rspec-rails'
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'database_cleaner'
  gem "factory_girl_rails"
  gem 'email_spec'
  gem 'i18n-spec'
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
end

