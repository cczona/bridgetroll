=======
OMG RAILS IS SO AWESOME

== Up and running
This app is done with ruby 1.9.2 and rails 3.1.

Assumptions
You have rvm installed; if not, you should check out http://beginrescueend.com/rvm/install/

First you need to get the code, install gems and create database:
$ git clone https://github.com/ultrasaurus/bridgetroll.git
$ cd bridgetroll
$ bundle install
# if you get an error and don't have a bundler installed run $gem install bundler
$ rake db:migrate
$ rails server

Go to http://localhost:3000/ and you can play with the app.

== Steps done on 1/17/12:

$ rails new bridgetroll -T
$ cd bridgetroll/
$ git init
$ git add .
$ git status
$ git commit -m "brand new rails app"

add this to the Gemfile
  gem 'devise'
  

$ bundle

$ rails g scaffold event title:string
$ rake db:migrate

$ rails generate devise:install
      create  config/initializers/devise.rb
      create  config/locales/devise.en.yml

Setup you must do manually if you haven't yet:

  1. In config/environments/development.rb development environment:

       config.action_mailer.default_url_options = { :host => 'localhost:3000' }

     This is a required Rails configuration. In production it must be the
     actual host of your application

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root :to => "events#index"

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>



$ rails g devise:install

add this to config/environments/development.rb
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
    
add this to config/routes.rb
  root :to => "events#index"
    
$ git rm public/index.html

add this to app/views/layouts/application.html.erb (under the yield)
  <p class="notice"><%= notice %></p>
  <p class="alert"><%= alert %></p>

add this to config/application.rb
  config.assets.initialize_on_precompile = false
      
$ rails generate devise User

uncomment out some of the features that you want in the user model (app/models/user.rb) and the migration file (in my case db/migrate/20120118045557_devise_create_users.rb )
see http://blazingcloud.net/2011/01/08/devise-authentication-in-rails-3/

$ rake db:migrate

$ rails generate devise:views

