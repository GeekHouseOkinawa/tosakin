require 'ostruct'

module TosakinTravisCi
  class TravisCiBuild < OpenStruct
    def context
      binding
    end
  end
end
