# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#deletemessage official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param message_id [Integer]
        def delete_message(
          chat_id:,
          message_id:
        )
          Types::Response.new(
            **Client.post(
              url: build_url('deleteMessage'),
              parameters: {
                chat_id: chat_id,
                message_id: message_id
              }
            )
          )
        end
      end
    end
  end
end
