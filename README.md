# Private Tutor CRM

## Installation

1. Clone repository to your local machine
2. Configure database config. Just copy file *config/database.example.yml* to *config/database.yml*. If you want to connect
to **MySQL** using not *root* user or if you have password for user, paste your **username** and **password** in *config/database.yml*.
Make sure that you paste this information in every environment section (ie *development*, *production*, *test* and etc.)
3. Run command `bundle` in your terminal to install necessary gems for project
4. Create databases for all environments: `rake db:create:all`
5. Migrate all existing migrations to have actual database schema: `rake db:migrate`
6. Load schema dump from actual environment (this is **development** environment to **test** environment): `RAILS_ENV=test rake db:schema:load`
7. Run seeds to populate database with initial data: `rake db:seed`
8. Run `rspec spec` in terminal and make sure that all tests passed
9. Start server: `rails s`
10. Go to [http://localhost:3000/admin]. There is default account for admin: *admin@example.com:password*

# Testing & Development process

Use guard to fill comfortable with running tests. Just type `guard` in terminal and see results of passing tests. Now every changing in test will run *rspecs* in terminal automatically

# Contributing

TODO

## TODO

* Clean up rails admin from wasted association objects
