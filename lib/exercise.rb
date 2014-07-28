require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"

# customers = Customer.all  # SELECT * FROM customers;
#
# customers.each do |customer|
#   p customer
# end
# p '*' * 20
#
# cust = Customer.first # SELECT * FROM customers Order by id limit 1;
# p cust
# p '*' * 20
#
# cust = Customer.last
# p cust
# p '*' * 20
#
# cust = Customer.find(3)
# p cust
# p '*' * 20
#
# customers = Customer.where(state: 'Colorado')
# customers.each do |customer|
#   p customer
# end
# p '*' * 20
#
# customers = Customer.first(5)
# customers.each do |customer|
#   p customer
# end
# p '*' * 20
#
# customers = Customer.order(:name)
# customers.each do |customer|
#
# end
# p '*' * 20
#
# customers = Customer.order(name: :desc)
# customers.each do |customer|
#   p customer
# end
# p '*' * 20
#
# items = Item.all
# items.each do |item|
#   p item
# end
# p '*' * 20
# items = Item.where("name LIKE 'boot%'")
# items.each do |item|
#   p item
# end
# p '*' * 20
#
# orders = Order.all
# orders.each do |order|
#   p order
# end
# p '*' * 20
#
# orders = Order.first(5)
# orders.each do |order|
#   p order
# end
# p '*' * 20
#
# orders = Order.last(5)
# orders.each do |order|
#   p order
# end
# p '*' * 20
#
# customers = Customer.all.pluck(:name, :email)
# customers.each do |customer|
#   p customer
# end
# p '*' * 20
#
# customers = Customer.all.pluck(:name, :address)
# customers.each do |customer|
#   p customer
# end
# p '*' * 20
#
# count = Customer.count
# p count
# p '*' * 20
#
# sum = Order.sum(:amount)
# p sum.to_s.to_f
# p '*' * 20

# sum = Order.where(id: 1).sum(:amount)
# p sum.to_s.to_f
# p '*' * 20

# avg = Order.average(:amount)
# p avg.to_s.to_f
# p '*' * 20

# avg = Order.average(:amount)
# p avg.to_s.to_f.round(2)
# p '*' * 20
#
# min = Order.minimum(:amount)
# p min.to_s.to_f
# p '*' * 20

# max = Order.maximum(:amount)
# p max.to_s.to_f
# p '*' * 20

# min_by_id = Order.all.group(:customer_id).minimum(:amount)
# min_by_id.each do |min|
#   p min[1].to_s.to_f
# end
# p '*' * 20
#
# max_by_id = Order.all.group(:customer_id).maximum(:amount)
# max_by_id.each do |max|
#   p max[1].to_s.to_f
# end
# p '*' * 20
#
# customers = Customer.where(state: 'Colorado')
# customers.each do |customer|
#   p customer
# end
# p '*' * 20
#
# customers = Customer.where(state: 'Colorado', city: 'Rigobertoside')
# customers.each do |customer|
#   p customer
# end
# p '*' * 20

# customers = Customer.all
# customers.each do |customer|
#   p customer
# end
# p '*' * 20
#
# customers = Customer.where("state = 'Ohio' OR state = 'Virginia'")
# customers.each do |customer|
#   p customer
# end
# p '*' * 20

item = Item.where(description: "snow board")
item[0].name = 'board01'
p item
p '*' * 20