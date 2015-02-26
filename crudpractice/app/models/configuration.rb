# == Schema Information
#
# Table name: configurations
#
#  id         :integer          not null, primary key
#  drivetrain :string
#  body_style :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  car_id     :integer
#

class Configuration < ActiveRecord::Base
  belongs_to :car
  validates :drivetrain, inclusion: { in: %w(RWD AWD FWD 4x4 4WD) }
#  def change
#    add_index :configurations, :car_id
#    add_column :car_id
#  end
end
