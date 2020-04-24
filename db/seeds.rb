# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create({name: "Perfumes"})
Category.create({name: "Tecnologia"})
Category.create({name: "Libros"})
Category.create({name: "Electrodomesticos"})
Category.create({name: "Aseo"})
Category.create({name: "Juquetes"})
Category.create({name: "Ropa"})
Category.create({name: "Oficina"})
Category.create({name: "Mascotas"})


product1 = Product.create(name: "Product1", price: 15.55)
product2 = Product.create(name: "Product2", price: 25.99)

product1.categories << Category.first
product2.categories << Category.last