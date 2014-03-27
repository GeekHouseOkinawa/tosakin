Tosakin::Application.routes.draw do
  mount TosakinCircleCi::Engine, at: '/circle'
end
