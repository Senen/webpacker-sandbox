# Webpacker-sandbox

This project is a sandbox project to help us to understand needed changes to use webpacker to manage frontend dependencies in place of traditional asset pipeline in a Rails 5 application. We need our frontend developers be able to use almost any webpack library easily to build rich and reactive frontends for our customers.

Also sprockets is not fully supporting ES6 so it is a limitation for frontend developers at this moment. Asset pipeline was deactivated completely form this project.

In this project we wanted to implemented the same features with 3 different frontend frameworks:

1. Coffescript + Turbolinks + Bootstrap 4
2. StimulusJS + Turbolinks + Bootstrap 4
3. VueJS + Turbolinks + Bootstrap-Vue (Bootstrap 4)

All three implementations are successfully passing same feature specs.

# TODO
Deploy on production server to explore deployment caveats.

# Installation instructions

To use this project locally
```
git clone https://github.com/Senen/webpacker-sandbox
cd webpacker-sandbox
bundle
yarn install
rake db:create db:migrate db:seed
rails s || rspec spec || foreman start -f Procfile-dev
```
