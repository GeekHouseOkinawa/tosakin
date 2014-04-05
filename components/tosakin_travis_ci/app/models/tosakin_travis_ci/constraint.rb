module TosakinTravisCi
  class Constraint
    def matches?(request)
      request.headers['Travis-Repo-Slug']
    end
  end
end
