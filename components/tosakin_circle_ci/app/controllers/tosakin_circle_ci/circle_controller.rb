module TosakinCircleCi
  class CircleController < ApplicationController
    def index
      build = CircleCiBuild.new(params[:payload])
      TosakinCircleCi.idobata.post CircleCiBuildFormatter.new(build).to_message
      render nothing: true
    end
  end
end
