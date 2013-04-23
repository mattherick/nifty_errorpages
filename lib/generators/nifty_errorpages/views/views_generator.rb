module NiftyErrorpages
  module Generators
    class ViewsGenerator < Rails::Generators::Base

      source_root File.expand_path("../../../../../app", __FILE__)

      desc <<-MSG
        Description:
        Copies NiftyErrorpages views into your application.
      MSG

      def copy_views
        directory "views", "app/views"
      end

    end
  end
end