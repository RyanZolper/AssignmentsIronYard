class QueriesController < ApplicationController
  def nothing
    #Find client with id 3
    @client1 = Client.find(3)
    #take first two clients available
    @firsttwo = Client.take(2)
    #first client available
    @first = Client.first
    #last client available
    @last = Client.last
    #client with role_id of 1
    @clientrole1 = Client.find_by role_id: 1
    #clients with one order
    @simpleclients = Client.where("orders_count = '1'")
    #? is replaced by the orders attribute
    @asfafsfsa = Client.where("orders_count = ?", params[:orders])
    #clients with 1 to 4 orders
    @yabaya = Client.where(orders_count: 1..4)
    #clients with 1 or 4 orders
    @yayaya = Client.where(orders_count: [1,4])
    #clients with role_id's other than 3
    @dofhsiphdf = Client.where.not( role_id: 3)
    #clients ordered by time created
    @ordered = Client.order("created_at DESC")
    #show client names that are distinct
    @ioduhfisduhf = Client.select(:name).distinct
    #first 5 clients
    @first5 = Client.limit(5)
    #clients 3-5
    @offest = Client.limit(3).offset(2)



  end
end
