module TosakinCircleCi
  class Constraint
    def matches?(request)
      request.params.key?(:payload) &&
      request.params[:payload] === Hash &&
      request.params[:payload][:build_url] &&
      request.params[:payload][:build_url].start_with? 'https://circleci.com'
    end
  end
end
