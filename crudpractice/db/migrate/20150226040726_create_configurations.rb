class CreateConfigurations < ActiveRecord::Migration
  def change
    create_table :configurations do |t|
      t.string :drivetrain
      t.string :body_style

      t.timestamps null: false

      add_index :configurations, :car_id
      add_column :car_id
    end
  end
end
