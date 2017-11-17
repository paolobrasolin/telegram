# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#sendvideo official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param video [InputFile, String]
        # @param duration [Integer, nil]
        # @param width [Integer, nil]
        # @param height [Integer, nil]
        # @param caption [String, nil]
        # @param disable_notification [Boolean, nil]
        # @param reply_to_message_id [Integer, nil]
        # @param reply_markup [InlineKeyboardMarkup, ReplyKeyboardMarkup, ReplyKeyboardRemove, ForceReply, nil]
        def send_video(
          chat_id:,
          video:,
          duration: nil,
          width: nil,
          height: nil,
          caption: nil,
          disable_notification: nil,
          reply_to_message_id: nil,
          reply_markup: nil
        )
          Types::Response.new(
            result_caster: ->(r) { Types::Message.new(**r.to_h) },
            **Client.post(
              url: build_url('sendVideo'),
              parameters: {
                chat_id: chat_id,
                video: video,
                duration: duration,
                width: width,
                height: height,
                caption: caption,
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
