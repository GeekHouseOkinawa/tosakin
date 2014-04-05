TosakinCircleCi::Engine.routes.draw do
  post '/:token', to: 'circle#create', constraints: TosakinCircleCi::Constraint.new
end
