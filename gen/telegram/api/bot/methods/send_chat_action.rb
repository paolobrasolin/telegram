# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#sendchataction official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param action [String]
        def send_chat_action(
          chat_id:,
          action:
        )
          Client.post url: build_url('sendChatAction'),
                      parameters: {
                        chat_id: chat_id,
                        action: action
                      }
        end
      end
    end
  end
end
