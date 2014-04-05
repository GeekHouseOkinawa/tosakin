require 'spec_helper'

# [TODO] - move to TosakinCircleCi spec
describe TosakinCircleCi::CircleController do
  routes { TosakinCircleCi::Engine.routes }

  it 'routes POST / to circle controller' do
    expect(post '/').to route_to('tosakin_circle_ci/circle#create')
  end
end
