module TosakinCircleCi
  class CircleController < ApplicationController
    def index
      build = CircleCiBuild.new(params[:payload])
      idobata.post CircleCiBuildFormatter.new(build).to_message
      render nothing: true
    end

    private
    def idobata
      if params[:endpoint_url]
        Idobata::Client.new(params[:endpoint_url])
      else
        TosakinCircleCi.idobata
      end
    end
  end
end
