require_dependency "nifty_errorpages/application_controller"

module NiftyErrorpages
  class ErrorsController < ApplicationController
    
    def show
      status = request.path[1..-1]
      respond_to do |format|
        format.html { render action: status }
        format.json { render json: { status: status, error: get_error_message_for_json_format(status.to_i) } }
      end
    end
    
    private
    
    def get_error_message_for_json_format status
      if status == 404
        message = "<h1>Not Found.</h1><p>The page you are looking for doesn't exist.</p>"
      elsif status == 422
        message = "<h1>Change Rejected.</h1><p>Maybe you tried to change something you didn't have access to.</p>"
      else
        message = "<h1>Oops.</h1><p>We're sorry, but something went wrong.</p>"
      end
      message.html_safe
    end

  end
end