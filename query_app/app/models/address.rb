# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  client_id  :integer
#  stnumber   :integer
#  street     :string
#

class Address < ActiveRecord::Base
  belongs_to :client
end
