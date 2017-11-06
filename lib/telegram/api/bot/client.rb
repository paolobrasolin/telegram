require 'json'
require 'rest-client'

module Telegram
  module API
    module Bot
      module Client
        def self.post(url:, parameters: {})
          JSON.parse RestClient.post(url, parameters)
        end
      end
    end
  end
end
