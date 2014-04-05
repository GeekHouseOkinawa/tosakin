TosakinTravisCi::Engine.routes.draw do
  post '*token', to: 'travis#create', constraints: TosakinTravisCi::Constraint.new
end
