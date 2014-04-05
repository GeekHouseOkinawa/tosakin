TosakinTravisCi::Engine.routes.draw do
  post '/', to: 'travis#create', constraints: TosakinTravisCi::Constraint.new
end
