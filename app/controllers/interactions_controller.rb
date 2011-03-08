class InteractionsController < ApplicationController
  
  respond_to :xml, :json
    
  include Resourceful
  
end
