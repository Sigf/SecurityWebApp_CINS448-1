# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  admins = User.create(
    {email: 'admin@app.com', password: "password", password_confirmation: "password", is_admin:1}
    )

  users = User.create(
    {email: 'a@a.com', password: "aaaaaaaa", password_confirmation: "aaaaaaaa", is_admin:0}
    )

  items = Item.create([
    {name: "AA", description: "", image: "", price: 10, stock: 1},
    {name: "AB", description: "", image: "", price: 120, stock: 4},
    {name: "AC", description: "", image: "", price: 40, stock: 2},
    {name: "CD", description: "", image: "", price: 30, stock: 12},
    {name: "WD", description: "", image: "", price: 20, stock: 15}
    ])
