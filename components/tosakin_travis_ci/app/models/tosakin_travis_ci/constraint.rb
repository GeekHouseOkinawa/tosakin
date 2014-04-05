module TosakinTravisCi
  class Constraint
    def matches?(request)
      p request.headers
      request.headers.key?('Travis-Repo-Slug')
    end
  end
end
