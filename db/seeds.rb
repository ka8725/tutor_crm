# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

Rake::Task["db:reset"].execute

User.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')

ProjectType.create!(:name => 'Мини-группы')
ProjectType.create!(:name => 'Индивидуальное обучение')

