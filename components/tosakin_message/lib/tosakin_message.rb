require 'idobata'

class TosakinMessage
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

  def idobata
    if token
      ::Idobata::Client.new(token)
    elsif ENV['IDOBATA_HOOK_URL']
      ::Idobata::Client.new(ENV['IDOBATA_HOOK_URL'])
    else
      ::Idobata.client
    end
  end
end
