module TosakinTravisCi
  class TravisController < ApplicationController
    def create
      formatter = TravisCiBuildFormatter.new(current_build)
      idobata.post source: formatter.html_format, format: :html
      render nothing: true
    end

    private

    def current_build
      TravisCiBuild.new(params[:payload])
    end

    def current_idobata
      Idobata::Client.new(params[:idobata_hook_url]) if params[:idobata_hook_url]
    end

    def idobata
      current_idobata || Tosakin.idobata
    end
  end
end
