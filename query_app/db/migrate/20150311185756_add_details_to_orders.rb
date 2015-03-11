class AddDetailsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :request, :string
  end
end
