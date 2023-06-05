# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
category = Category.create(id:"1",number: "1.1",name: "Tecnología")
category = Category.create(id:"2",number: "1.2",name: "Farmacia")
category = Category.create(id:"3",number: "1.3",name: "Hogar")

sub_categories = SubCategory.create(id:"1",number: "1.1.1",name: "Computación",category_id: "1")
sub_categories = SubCategory.create(id:"2",number: "1.1.2",name: "Telefonía",category_id: "1")

sub_categories = SubCategory.create(id:"3",number: "1.2.1",name: "Medicamentos",category_id: "2")

sub_categories = SubCategory.create(id:"4",number: "1.3.1",name: "Baño",category_id: "3")

sup_sub_categories = SupSubCategory.create(id:"1",number: "1.1.1.1",name: "Computadora de escritorio",sub_category_id: "1")
sup_sub_categories = SupSubCategory.create(id:"2",number: "1.1.1.2",name: "Computadora portátil",sub_category_id: "1")
sup_sub_categories = SupSubCategory.create(id:"3",number: "1.1.1.3",name: "Tablets",sub_category_id: "1")

sup_sub_categories = SupSubCategory.create(id:"4",number: "1.1.2.1",name: "Celular",sub_category_id: "2")
sup_sub_categories = SupSubCategory.create(id:"5",number: "1.1.2.2",name: "Accesorios",sub_category_id: "2")

sup_sub_categories = SupSubCategory.create(id:"6",number: "1.2.1.1",name: "Analgésicos",sub_category_id: "3")
sup_sub_categories = SupSubCategory.create(id:"7",number: "1.2.1.2",name: "Estomacal",sub_category_id: "3")

sup_sub_categories = SupSubCategory.create(id:"8",number: "1.3.1.1",name: "Toallas",sub_category_id: "4")
sup_sub_categories = SupSubCategory.create(id:"9",number: "1.3.1.2",name: "Batas",sub_category_id: "4")

products = Product.create(id: "1", product_name: "DELL 4512", material_number: "AX-4342FD", stock: "3", sup_sub_category_id: "2")
products = Product.create(id: "2", product_name: "Iphone X", material_number: "AD-4332EE", stock: "10", sup_sub_category_id: "4")
products = Product.create(id: "3", product_name: "Correa", material_number: "AC-5545Q", stock: "0", sup_sub_category_id: "5")
products = Product.create(id: "4", product_name: "Bata hombre", material_number: "BN-18643", stock: "1", sup_sub_category_id: "9")
products = Product.create(id: "5", product_name: "Aspirina", material_number: "MD-7456AS", stock: "22", sup_sub_category_id: "6")
