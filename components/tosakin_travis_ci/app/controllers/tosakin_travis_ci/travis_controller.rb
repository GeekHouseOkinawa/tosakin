module TosakinTravisCi
  class TravisController < ApplicationController
    def create
      formatter = TravisCiBuildFormatter.new(current_build)
      TosakinMessage.message_class.create(source: formatter.html_format, format: :html, token: params[:token])
      render nothing: true
    end

    private

    def payload
      ActiveSupport::JSON.decode(params[:payload])
    rescue
      {}
    end

    def current_build
      TravisCiBuild.new(payload)
    end
  end
end
