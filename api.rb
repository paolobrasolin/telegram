require 'json'
require 'rest-client'

module TLAPI
  module Client
    def self.post(url:, parameters: {})
      JSON.parse RestClient.post(url, parameters)
    end
  end
end

module Telegram
  module API
    module Bot
      module Types; end

      module Methods
        def send_message(chat_id:, text:)
          url = build_url method_name: __method__.to_s.delete('_')
          parameters = method_parameters_hash __method__, binding
          TLAPI::Client.post url: url, parameters: parameters
        end
      end
    end
  end
end

require 'telegram'

TITANIUM_ABBOT_TOKEN = '469504779:AAEqHfBmWptrSyk4eedhir3TGma6TsaiVTU'

abbot = Telegram::Bot.new token: TITANIUM_ABBOT_TOKEN

abbot.send_message chat_id: '238955633', text: "Funziono."
