# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  client_id  :integer
#  request    :string
#

class Order < ActiveRecord::Base
  belongs_to :client, counter_cache: true
end
