if !Rails.env.development? || !Rails.env.test?
  Rails.application.config.exceptions_app = NiftyErrorpages::Engine.routes
end