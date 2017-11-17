# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#forwardmessage official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param from_chat_id [Integer, String]
        # @param disable_notification [Boolean, nil]
        # @param message_id [Integer]
        def forward_message(
          chat_id:,
          from_chat_id:,
          disable_notification: nil,
          message_id:
        )
          Types::Response.new(
            result_caster: ->(r) { Types::Message.new(**r.to_h) },
            **Client.post(
              url: build_url('forwardMessage'),
              parameters: {
                chat_id: chat_id,
                from_chat_id: from_chat_id,
                disable_notification: disable_notification,
                message_id: message_id
              }
            )
          )
        end
      end
    end
  end
end
