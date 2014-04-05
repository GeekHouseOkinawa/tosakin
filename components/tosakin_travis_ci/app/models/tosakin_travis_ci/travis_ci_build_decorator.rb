module TosakinTravisCi
  module TravisCiBuildDecorator
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
      seconds = (Time.parse(finished_at) - Time.parse(started_at)).to_i.to_s
      "(Finished in #{seconds} seconds)"
    rescue
      ''
    end

    def label
      ERB.new("<span class=\"label <%= label_class %>\"><%= status_message %></span>").result(binding)
    end

    def label_class
      case status_message
      when 'Passed', 'Fixed'
        'label-success'
      when 'Failed', 'Still Failing'
        'label-important'
      else
        ''
      end
    end
  end
end
