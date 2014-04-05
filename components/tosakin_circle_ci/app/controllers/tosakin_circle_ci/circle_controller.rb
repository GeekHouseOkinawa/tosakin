module TosakinCircleCi
  class CircleController < ApplicationController
    def create
      build = CircleCiBuild.new(params[:payload])
      formatter = CircleCiBuildFormatter.new(build)
      idobata.post source: formatter.html_format, format: :html
      render nothing: true
    end

    private
    def idobata
      if params[:idobata_hook_url]
        Idobata::Client.new(params[:idobata_hook_url])
      else
        Tosakin.idobata
      end
    end
  end
end
