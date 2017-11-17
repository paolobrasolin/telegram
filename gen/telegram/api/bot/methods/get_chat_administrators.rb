# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#getchatadministrators official documentation}.
        #
        # @param chat_id [Integer, String]
        def get_chat_administrators(
          chat_id:
        )
          Types::Response.new(
            **Client.post(
              url: build_url('getChatAdministrators'),
              parameters: {
                chat_id: chat_id
              }
            )
          )
        end
      end
    end
  end
end
