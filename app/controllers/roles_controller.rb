class RolesController < ApplicationController

  respond_to :xml, :json, :html

   include Resourceful

   # a special method that we can call from jqGrid to spit back html of a select element needed for form editing of users assigned to a role
   def htmlselect_jqgrid
     @roles=Role.find(:all,:order=>'name')
     render :layout=>false
   end
   
end
