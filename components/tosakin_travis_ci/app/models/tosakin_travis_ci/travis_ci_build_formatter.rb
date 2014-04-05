module TosakinTravisCi
  class TravisCiBuildFormatter
    mattr_accessor :template

    def initialize(build)
      @build = build
    end

    def template
      @@template ||= <<'TEMPLATE'
<%= github %><a href="<%= travis_ci_build_url %>">#<%= number %></a> (<%= branch %> - <span class="commit-id"><%= short_revision %></span>): <%= label %> in <%= finished_in %> seconds)<br/>
<%= committer_name %>: <%= message %> (<a href="<%= compare_url %>">changeset</a>)
TEMPLATE
    end

    def html_format
      ERB.new(template).result @build.extend(TravisCiBuildDecorator).context
    end
  end
end
