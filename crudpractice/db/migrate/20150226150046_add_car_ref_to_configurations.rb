class AddCarRefToConfigurations < ActiveRecord::Migration
  def change
    add_reference :configurations, :car, index: true
    add_foreign_key :configurations, :cars
  end
end
