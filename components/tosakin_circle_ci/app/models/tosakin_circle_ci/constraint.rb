module TosakinCircleCi
  class Constraint
    def matches?(request)
      request.params.key?('payload') &&
      request.params['payload'].kind_of? Hash &&
      request.params['payload']['steps']
    end
  end
end
