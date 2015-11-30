# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Type.destroy_all

Type.create(name: "binary")
Type.create(name: "boolean")
Type.create(name: "date")
Type.create(name: "datetime")
Type.create(name: "decimal")
Type.create(name: "float")
Type.create(name: "integer")
Type.create(name: "string")
Type.create(name: "text")
Type.create(name: "time")
Type.create(name: "timestamp")
