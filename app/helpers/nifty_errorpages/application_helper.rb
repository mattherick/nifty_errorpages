module NiftyErrorpages
  module ApplicationHelper
  
    def pagetitle
      content_for?(:pagetitle) ? content_for(:pagetitle) : "Error occured"
    end
    
  end
end