module NiftyErrorpages
  module Generators
    class ControllersGenerator < Rails::Generators::Base

      source_root File.expand_path("../../../../../app", __FILE__)

      desc <<-MSG
        Description:
        Copies NiftyErrorpages controllers into your application.
      MSG

      def copy_controllers
        directory "controllers", "app/controllers"
      end

    end
  end
end