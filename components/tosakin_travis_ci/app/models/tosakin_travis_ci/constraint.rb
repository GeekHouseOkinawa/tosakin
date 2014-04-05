module TosakinTravisCi
  class Constraint
    def matches?(request)
      p request
      request.headers.key?('Travis-Repo-Slug')
    end
  end
end
