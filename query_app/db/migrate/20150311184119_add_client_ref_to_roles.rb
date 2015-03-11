class AddClientRefToRoles < ActiveRecord::Migration
  def change
    add_reference :roles, :client, index: true
    add_foreign_key :roles, :clients
  end
end
