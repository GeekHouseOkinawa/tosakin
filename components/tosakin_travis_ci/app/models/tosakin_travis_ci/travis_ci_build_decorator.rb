module TosakinTravisCi
  class TravisCiBuildDecorator
    def github
      "#{repository['owner_name']}/#{repository['name']}"
    end

    def travis_ci_build_url
      "https://travis-ci.org/#{github}/builds/#{id}"
    end

    def short_revision
      commit[0,7]
    end

    def finished_in
      if started_at && finished_at
        (Time.parse(finished_at) && Time.parse(started_at)).to_i.to_s
      else
        ''
      end
    end
  end
end
