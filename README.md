# NiftyErrorpages

This gem contains a little Rails 3.2 engine for generating dynamic error pages.
If an error occures, normally Rails will render a static 404.html, 422.html or 500.html file from the public folder.
NiftyErrorpages allows you to handle all the rendering through an errors_controller with views.
You can easily customize your views, layout, helper and controller.

The gem name is derived from the awesome [NiftyGenerators Gem](https://github.com/ryanb/nifty-generators) from Ryan Bates, because the default error pages have a quite similar style as the nifty generator views :-).

## Quick Start

```
gem install nifty_errorpages
```

Or add it to your Gemfile:

```
gem "nifty_errorpages"
```

## Generators
There are following generators available for customizing your error pages and the behaviour:

```
rails g nifty_errorpages:views          # generates view files
rails g nifty_errorpages:controllers    # generates controller files
rails g nifty_errorpages:helpers        # generates helper files
```
  
Or simple generate all files

```
rails g nifty_errorpages:all            # generates all files
```

## Development
Feel free to fork this project and add additional features. If you recognize any bugs, please create a new pull request or simple let me know about your problem. You always can contact me under [matthias@frick-web.at](mailto:matthias@frick-web.at).

##  Testing
I run the tests under the production environment to simulate the exact error behavior under production.
Because of this you need to migrate the production database first:

```
bundle exec rake db:migrate RAILS_ENV=production
```

After that you can simple run the specs, first cd into the spec folder and then run:

```
bundle exec rspec features/
```

Copyright (c) 2013, Matthias Frick, BSc.
This project is released under the [MIT LICENSE](https://github.com/mattherick/nifty_errorpages/blob/master/MIT-LICENSE).