module TosakinCircleCi
  class CircleController < ApplicationController
    def create
      formatter = CircleCiBuildFormatter.new(current_build)
      TosakinMessage.message_class.create(source: formatter.html_format, format: :html, token: params[:token])
      render nothing: true
    end

    private

    def current_build
      CircleCiBuild.new(params[:payload])
    end
  end
end
