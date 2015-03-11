class AddDetailsToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :stnumber, :integer
    add_column :addresses, :street, :string
  end
end
