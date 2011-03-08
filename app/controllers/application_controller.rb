require 'resourceful'

class ApplicationController < ActionController::Base
  
  protect_from_forgery

  after_filter { |controller| add_callback(controller.response) }  # add json callback function if passed in
  
  def strip_params(input)
    input.split("?")[0]
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
