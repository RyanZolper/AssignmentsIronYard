class AddClientRefToAddress < ActiveRecord::Migration
  def change
    add_reference :addresses, :client, index: true
    add_foreign_key :addresses, :clients
  end
end
