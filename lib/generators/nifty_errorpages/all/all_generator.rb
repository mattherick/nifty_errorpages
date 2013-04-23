module NiftyErrorpages
  module Generators
    class AllGenerator < Rails::Generators::Base

      source_root File.expand_path("../../../../../app", __FILE__)

      desc <<-MSG
        Description:
        Copies all NiftyErrorpages files (controllers and views) into your application.
      MSG

      def copy_all
      	generate "nifty_errorpages:controllers"
      	generate "nifty_errorpages:views"
      	generate "nifty_errorpages:helpers"
      end

    end
  end
end