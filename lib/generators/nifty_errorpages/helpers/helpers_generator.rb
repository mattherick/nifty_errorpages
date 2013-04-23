module NiftyErrorpages
  module Generators
    class HelpersGenerator < Rails::Generators::Base

      source_root File.expand_path("../../../../../app", __FILE__)

      desc <<-MSG
        Description:
        Copies HelpersGenerator helpers into your application.
      MSG

      def copy_helpers
        directory "helpers", "app/helpers"
      end

    end
  end
end