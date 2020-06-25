# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.destroy_all

Article.create([
    {title: "Polititian Let's Out a Loud One During Press Conference", description: "farts"},
    {title: "Whole World Jumps at the Same Time", description: "The End"}
    ])