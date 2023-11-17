# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
1. Clone repo
2. add RSpec to your Gemfile:
  group :development, :test do
    gem 'rspec-rails', '~> 3.0'
  end
3. install the gem with this command:
   bundle install

4. run this command to generate the necessary RSpec files:
   -rails generate rspec:install

5.Organize your tests:

Now you can organize your tests within the spec directory. For models, you can create a models directory and place your model spec files inside it.
  this should be the directory structure
   /spec
    /models
      - item_spec.rb
  - rails_helper.rb
  - .rspec

6. run the following commands:
   - rails db:create
   - rails db:migrate
   - rails db:seed
   - rspec

   
