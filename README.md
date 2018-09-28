# Webpacker-sandbox

This project is a sandbox project to help us to understand needed changes to use webpacker to manage frontend dependencies in place of traditional asset pipeline in a Rails 5 application. We need our frontend developers be able to use almost any webpack library easily to build rich and reactive frontends for our customers.

Also sprockets is not fully supporting ES6 so it is a limitation for frontend developers at this moment. Asset pipeline was deactivated completely form this project.

In this project we wanted to implemented the same features with 3 different frontend frameworks:

1. Coffescript + Turbolinks + Bootstrap 4
2. StimulusJS + Turbolinks + Bootstrap 4
3. VueJS + Turbolinks + Bootstrap-Vue (Bootstrap 4)

All three implementations are successfully passing same feature specs.

# TODO
Deploy on production server to explore and resolve deployment and server configuration problems to solve.

# Installation instructions

To use this project locally:

```
git clone https://github.com/Senen/webpacker-sandbox
cd webpacker-sandbox
bundle
yarn install
rake db:create db:migrate db:seed
rails s || foreman start -f Procfile-dev
```

**You will nedd to install foreman gem manually.**

# Tests
We are using rspec-rails and chromedriver to run feature specs with JS support. You should have chromedriver tool available on your PAT or you can use any driver modifying spec/support/capybara.rb configuration file.

If you are running OSX you can install it with brew:

```
brew tap homebrew/cask
brew cask install chromedriver
```