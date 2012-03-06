# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
author = Author.find_or_create_by_name("Sup")
Article.create(:title => "Blah blah",
                :author => author,
                :body => "Blah blah blah blah blah blah blah.  Ohai!  Blah blah blah blah blah blah blah blah")
                
author = Author.find_or_create_by_name("Dude")
Article.create(:title => "Orange blah",
                :author => author,
                :body => "Blah blah blah blah blah blah blah.  Orange!  Blah blah blah blah blah blah blah blah")
                
author = Author.find_or_create_by_name("Woah")
Article.create(:title => "Dude blah",
                :author => author,
                :body => "Blah blah blah blah blah blah blah.  Dude!  Blah blah blah blah blah blah blah blah")
                
author = Author.find_or_create_by_name("Your mom")
Article.create(:title => "Mom blah",
                :author => author,
                :body => "Blah blah blah blah blah blah blah.  Mom!  Blah blah blah blah blah blah blah blah")
                
author = Author.find_or_create_by_name("Woah")
Article.create(:title => "Woah blah",
                :author => author,
                :body => "Blah blah blah blah blah blah blah.  Woah!  Blah blah blah blah blah blah blah blah")
                
author = Author.find_or_create_by_name("Radical")
Article.create(:title => "Radical blah",
                :author => author,
                :body => "Blah blah blah blah blah blah blah.  Radical!  Blah blah blah blah blah blah blah blah")
                
