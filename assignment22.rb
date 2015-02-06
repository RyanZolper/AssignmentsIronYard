load 'invoiceitem.rb'
load 'invoice.rb'

x = 0

itemarray = Array.new




loop do
  item = InvoiceItem.new
  puts "Enter the product name:"
  name = gets.chomp
  break if name == ""
  item.product_name = name
  puts "Enter sales price: (Ex: '24.50 or 12')"
  pretax = gets.chomp
  item.sp(pretax)
  puts "Enter quantity:"
  quant = gets.chomp
  item.qn(quant)
  puts "Enter tax percentage (Ex: '7')"
  tpct = gets.chomp
  item.tp(tpct)
  itemarray[x] = item
  x += 1
  puts "Name :#{item.product_name}"
  puts "Quantity: #{item.quantity}"
  puts "Sales price: #{item.sale_price}"
  puts "Tax percentage: #{item.tax_percentage}"
  puts "Total price: #{item.totalprice}"
end

invoiceobject = Invoice.new
itemarray.delete_if {|a| a.quantity == 0 }
invoiceobject.items = itemarray
