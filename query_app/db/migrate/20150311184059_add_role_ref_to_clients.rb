class AddRoleRefToClients < ActiveRecord::Migration
  def change
    add_reference :clients, :role, index: true
    add_foreign_key :clients, :roles
  end
end
