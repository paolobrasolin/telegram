# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#getchatmember official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param user_id [Integer]
        def get_chat_member(
          chat_id:,
          user_id:
        )
          Client.post url: build_url('getChatMember'),
                      parameters: {
                        chat_id: chat_id,
                        user_id: user_id
                      }
        end
      end
    end
  end
end
