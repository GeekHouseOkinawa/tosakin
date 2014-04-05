require 'erb'

module TosakinCircleCi
  class CircleCiBuildFormatter
    mattr_accessor :template

    def initialize(build)
      @build = build
    end

    def template
      @@template || <<'EOS'
<%= label %>
<%= outcome.camelize %> in build <a href="<%= build_url %>"><%= build_num %></a> of <a href="<%= build_url %>"><%= github %></a> (<a href="<%= circle_ci_branch_url %>"><%= branch %></a>)<br/>
- <%= committer_name %>: <%= subject %> (<a href="<%= commit_url %>"><%= short_revision %></a>)
EOS
    end

    def html_format
      ERB.new(template).result @build.extend(CircleCiBuildDecorator).context
    end
  end
end
