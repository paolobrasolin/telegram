# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#kickchatmember official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param user_id [Integer]
        # @param until_date [Integer, nil]
        def kick_chat_member(
          chat_id:,
          user_id:,
          until_date: nil
        )
          Types::Response.new(
            **Client.post(
              url: build_url('kickChatMember'),
              parameters: {
                chat_id: chat_id,
                user_id: user_id,
                until_date: until_date
              }
            )
          )
        end
      end
    end
  end
end
