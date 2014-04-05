module TosakinCircleCi
  class CircleController < ApplicationController
    def create
      formatter = CircleCiBuildFormatter.new(current_build)
      idobata.post source: formatter.html_format, format: :html
      render nothing: true
    end

    private

    def current_build
      CircleCiBuild.new(params[:payload])
    end

    def idobata
      if params[:idobata_hook_url]
        Idobata::Client.new(params[:idobata_hook_url])
      else
        Tosakin.idobata
      end
    end
  end
end
