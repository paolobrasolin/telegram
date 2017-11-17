# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#sendsticker official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param sticker [InputFile, String]
        # @param disable_notification [Boolean, nil]
        # @param reply_to_message_id [Integer, nil]
        # @param reply_markup [InlineKeyboardMarkup, ReplyKeyboardMarkup, ReplyKeyboardRemove, ForceReply, nil]
        def send_sticker(
          chat_id:,
          sticker:,
          disable_notification: nil,
          reply_to_message_id: nil,
          reply_markup: nil
        )
          Types::Response.new(
            result_caster: ->(r) { Types::Message.new(**r.to_h) },
            **Client.post(
              url: build_url('sendSticker'),
              parameters: {
                chat_id: chat_id,
                sticker: sticker,
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
