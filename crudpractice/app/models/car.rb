# == Schema Information
#
# Table name: cars
#
#  id         :integer          not null, primary key
#  make       :string
#  model      :string
#  HP         :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Car < ActiveRecord::Base
end
