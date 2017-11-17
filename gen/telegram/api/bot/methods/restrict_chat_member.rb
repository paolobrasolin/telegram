# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#restrictchatmember official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param user_id [Integer]
        # @param until_date [Integer, nil]
        # @param can_send_messages [Boolean, nil]
        # @param can_send_media_messages [Boolean, nil]
        # @param can_send_other_messages [Boolean, nil]
        # @param can_add_web_page_previews [Boolean, nil]
        def restrict_chat_member(
          chat_id:,
          user_id:,
          until_date: nil,
          can_send_messages: nil,
          can_send_media_messages: nil,
          can_send_other_messages: nil,
          can_add_web_page_previews: nil
        )
          Types::Response.new(
            **Client.post(
              url: build_url('restrictChatMember'),
              parameters: {
                chat_id: chat_id,
                user_id: user_id,
                until_date: until_date,
                can_send_messages: can_send_messages,
                can_send_media_messages: can_send_media_messages,
                can_send_other_messages: can_send_other_messages,
                can_add_web_page_previews: can_add_web_page_previews
              }
            )
          )
        end
      end
    end
  end
end
