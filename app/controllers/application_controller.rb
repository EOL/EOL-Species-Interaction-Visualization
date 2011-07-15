require 'resourceful'

class ApplicationController < ActionController::Base
  
  protect_from_forgery

  after_filter { |controller| add_callback(controller.response) }  # add json callback function if passed in

  rescue_from CanCan::AccessDenied do |exception|
    not_authorized
  end

  def not_authorized
    
    message="You are not authorized to perform this action."
    respond_to do |format|
      format.html 
      format.xml  { render :xml => message, :status=>401 }
      format.json { render :json => {:message=>"^#{message}"}, :status=>401}
    end

  end
            
  def strip_params(input)
    input.split("?")[0]
  end
  
  def ajax_only
    
    return unless request.post? && request.xhr? 
  
  end
  
  def add_callback(response)
    
    json_callback_param = request['callback']
    # only add a callback function if the user passes in a valid function name and the response is a success (skip '?' since this a special jquery jsonp callback)
    if json_callback_param && json_callback_param != '?' && json_callback_param != '' && (response.status >= 200 && response.status < 299)
      response.body = "#{json_callback_param} (#{response.body});"
      response.content_type = 'application/x-javascript'
    end
  end
  
end
