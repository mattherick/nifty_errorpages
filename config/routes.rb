NiftyErrorpages::Engine.routes.draw do
  match '(errors)/:status', to: 'errors#show', constraints: { status: /\d{3}/ }
end