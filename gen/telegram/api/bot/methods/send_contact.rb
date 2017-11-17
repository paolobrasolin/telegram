# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#sendcontact official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param phone_number [String]
        # @param first_name [String]
        # @param last_name [String, nil]
        # @param disable_notification [Boolean, nil]
        # @param reply_to_message_id [Integer, nil]
        # @param reply_markup [InlineKeyboardMarkup, ReplyKeyboardMarkup, ReplyKeyboardRemove, ForceReply, nil]
        def send_contact(
          chat_id:,
          phone_number:,
          first_name:,
          last_name: nil,
          disable_notification: nil,
          reply_to_message_id: nil,
          reply_markup: nil
        )
          Types::Response.new(
            result_caster: ->(r) { Types::Message.new(**r.to_h) },
            **Client.post(
              url: build_url('sendContact'),
              parameters: {
                chat_id: chat_id,
                phone_number: phone_number,
                first_name: first_name,
                last_name: last_name,
                disable_notification: disable_notification,
                reply_to_message_id: reply_to_message_id,
                reply_markup: reply_markup
              }
            )
          )
        end
      end
    end
  end
end
