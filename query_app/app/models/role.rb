# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  client_id  :integer
#  name       :string
#

class Role < ActiveRecord::Base
  has_and_belongs_to_many :clients
end