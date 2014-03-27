require 'erb'

module TosakinCircleCi
  module CircleCiBuildDecorator
    def label
      ERB.new("<span class=\"label <%= label_class %>\"><%= outcome.camelcase %></span>").result(binding)
    end

    def label_class
      case outcome.downcase
      when 'success'
        'label-success'
      when 'failed'
        'label-important'
      else
        ''
      end
    end
  end
end
