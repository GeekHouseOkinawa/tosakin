Tosakin::Application.routes.draw do
  mount TosakinCircleCi::Engine, at: '/circle'
  mount TosakinTravisCi::Engine, at: '/travis'
end
