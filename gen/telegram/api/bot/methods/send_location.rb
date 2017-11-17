# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#sendlocation official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param latitude [Float]
        # @param longitude [Float]
        # @param live_period [Integer, nil]
        # @param disable_notification [Boolean, nil]
        # @param reply_to_message_id [Integer, nil]
        # @param reply_markup [InlineKeyboardMarkup, ReplyKeyboardMarkup, ReplyKeyboardRemove, ForceReply, nil]
        def send_location(
          chat_id:,
          latitude:,
          longitude:,
          live_period: nil,
          disable_notification: nil,
          reply_to_message_id: nil,
          reply_markup: nil
        )
          Types::Response.new(
            result_caster: ->(r) { Types::Message.new(**r.to_h) },
            **Client.post(
              url: build_url('sendLocation'),
              parameters: {
                chat_id: chat_id,
                latitude: latitude,
                longitude: longitude,
                live_period: live_period,
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
