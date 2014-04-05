module TosakinCircleCi
  class CircleController < ApplicationController
    def create
      build = CircleCiBuild.new(params[:payload])
      idobata.post CircleCiBuildFormatter.new(build).to_message
      render nothing: true
    end

    private
    def idobata
      if params[:endpoint_url]
        Idobata::Client.new(params[:endpoint_url])
      else
        Tosakin.idobata
      end
    end
  end
end
