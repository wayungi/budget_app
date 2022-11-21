# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#---------------users---------------
a = User.create(name: 'amara')

b = User.create(name: 'bero')
c = User.create(name: 'chan')
d = User.create(name: 'dei')
e = User.create(name: 'erina')
f = User.create(name: 'fwa')

#----------categories--------------
g = Category.create(name:'goal', icon: 'https://picsum.photos/200', user: a)
i = Category.create(name:'illiling', icon: 'https://picsum.photos/200', user: a)

h = Category.create(name:'hiker', icon: 'https://picsum.photos/200', user: a)
j = Category.create(name:'jakwor', icon: 'https://picsum.photos/200', user: a)


#--------------expenses (a) jakwor------------------
k = Expense.create(name:'attero', amount: 500, user:a)
l = Expense.create(name:'tong', amount: 1000, user:a)
m = Expense.create(name:'pala', amount: 100, user:a)

#--------------expenses (a) hiker------------------
n = Expense.create(name:'wara', amount: 2000, user:a)
o = Expense.create(name:'toll', amount: 500, user:a)
p = Expense.create(name:'supeu', amount: 3000, user:a)




