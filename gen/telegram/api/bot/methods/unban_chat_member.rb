# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#unbanchatmember official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param user_id [Integer]
        def unban_chat_member(
          chat_id:,
          user_id:
        )
          Types::Response.new(
            **Client.post(
              url: build_url('unbanChatMember'),
              parameters: {
                chat_id: chat_id,
                user_id: user_id
              }
            )
          )
        end
      end
    end
  end
end
