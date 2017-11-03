require 'telegram/api/bot'

module Telegram
  class Bot
    include API::Bot::Methods

    def initialize(token:)
      @token = token
    end
  end
end
