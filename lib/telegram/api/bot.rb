# frozen_string_literal: true

require 'telegram/api/bot/client'
require 'telegram/api/bot/methods'
require 'telegram/api/bot/types'

module Telegram
  module API
    module Bot
      URL = 'https://api.telegram.org'

      def self.build_url(token:, method:)
        [URL, "bot#{token}", method].join('/')
      end
    end
  end
end
