# frozen_string_literal: true

require 'telegram/api/bot'

module Telegram
  class Bot
    # include API::Bot::Methods

    def initialize(token:)
      @token = token
      @client = Telegram::API::Bot::Client
    end
  end
end
