# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#pinchatmessage official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param message_id [Integer]
        # @param disable_notification [Boolean, nil]
        def pin_chat_message(
          chat_id:,
          message_id:,
          disable_notification: nil
        )
          Types::Response.new(
            **Client.post(
              url: build_url('pinChatMessage'),
              parameters: {
                chat_id: chat_id,
                message_id: message_id,
                disable_notification: disable_notification
              }
            )
          )
        end
      end
    end
  end
end
