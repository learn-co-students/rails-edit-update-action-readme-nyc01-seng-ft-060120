# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 
Article.delete_all
Article.create(title: "1", description: "1")
Article.create(title: "2", description: "2")
Article.create(title: "3", description: "3")
Article.create(title: "4", description: "4")
Article.create(title: "5", description: "5")