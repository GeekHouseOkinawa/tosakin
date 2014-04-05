TosakinCircleCi::Engine.routes.draw do
  post '/', to: 'circle#create', constraints: TosakinCircleCi::Constraint.new
end
