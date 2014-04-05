module TosakinTravisCi
  class TravisCiBuildFormatter
    mattr_accessor :template

    def initialize(build)
      @build = build
    end

    def template
      @@template ||= <<'TEMPLATE'
<%= github %><a href="<%= travis_ci_build_url %>">#<%= number %></a> (<%= branch %> - <%= short_revision %>): <%= status_message %> in <%= finished_in %> seconds)
<%= committer_name %>: <%= message %> (<a href="<%= compare_url %>">changeset</a>)
TEMPLATE
    end

    def html_format
      ERB.new(template).result @build.extend(TravisCiBuildDecorator).context
    end
  end
end
