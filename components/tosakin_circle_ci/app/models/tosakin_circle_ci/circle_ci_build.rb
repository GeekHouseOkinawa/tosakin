require 'ostruct'

module TosakinCircleCi
  class CircleCiBuild < OpenStruct
    def github
      "#{username}/#{reponame}"
    end

    def commit_url
      "https://github.com/#{github}/commit/#{vcs_revision}"
    end

    def short_revision
      vcs_revision[0,7]
    end

    def circle_ci_branch_url
      "https://circleci.com/gh/#{github}/tree/#{branch}"
    end

    def context
      binding
    end
  end
end
