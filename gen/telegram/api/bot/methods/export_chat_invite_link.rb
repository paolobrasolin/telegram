# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#exportchatinvitelink official documentation}.
        #
        # @param chat_id [Integer, String]
        def export_chat_invite_link(
          chat_id:
        )
          Types::Response.new(
            **Client.post(
              url: build_url('exportChatInviteLink'),
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
