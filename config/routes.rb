Tosakin::Application.routes.draw do
  mount TosakinCircleCi::Engine, at: '/hook'
  mount TosakinTravisCi::Engine, at: '/hook'
end
