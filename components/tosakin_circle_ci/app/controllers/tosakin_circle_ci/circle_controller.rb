module TosakinCircleCi
  class CircleController < ApplicationController
    def index
      render json: params.to_json
    end
  end
end
