module TosakinMessage
  class Message
    IDOBATA_HOST          = 'https://idobata.io'
    IDOBATA_HOOK_API_PATH = '/hook'

    attr_accessor :source, :format, :token

    include ActiveModel::Model

    class << self
      def create(source:, format:, token: nil)
        new(source: source, format: format, token: token).save
      end
    end

    def save
      idobata.post source: source, format: format
    end

    def endpoint_url(token)
      "#{IDOBATA_HOST}#{IDOBATA_HOOK_API_PATH}/#{token}"
    end

    def idobata
      if token
        ::Idobata::Client.new endpoint_url token
      elsif ENV['IDOBATA_HOOK_URL']
        ::Idobata::Client.new ENV['IDOBATA_HOOK_URL']
      else
        ::Idobata.client
      end
    end
  end
end
