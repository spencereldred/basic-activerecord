require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"

customers = Customer.all  # SELECT * FROM customers;

customers.each do |customer|
  puts customer.inspect
end
p '*' * 20

cust = Customer.first # SELECT * FROM customers Order by id limit 1;
p cust
p '*' * 20

cust = Customer.last
p cust
p '*' * 20

cust = Customer.find(3)
p cust
p '*' * 20

customers = Customer.where(state: 'Colorado')
customers.each do |customer|
  puts customer.inspect
end
p '*' * 20

customers = Customer.first(5)
customers.each do |customer|
  puts customer.inspect
end
p '*' * 20

customers = Customer.order(:name)
customers.each do |customer|
  puts customer.inspect
end
p '*' * 20

customers = Customer.order(name: :desc)
customers.each do |customer|
  puts customer.inspect
end
p '*' * 20
