# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#sendaudio official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param audio [InputFile, String]
        # @param caption [String, nil]
        # @param duration [Integer, nil]
        # @param performer [String, nil]
        # @param title [String, nil]
        # @param disable_notification [Boolean, nil]
        # @param reply_to_message_id [Integer, nil]
        # @param reply_markup [InlineKeyboardMarkup, ReplyKeyboardMarkup, ReplyKeyboardRemove, ForceReply, nil]
        def send_audio(
          chat_id:,
          audio:,
          caption: nil,
          duration: nil,
          performer: nil,
          title: nil,
          disable_notification: nil,
          reply_to_message_id: nil,
          reply_markup: nil
        )
          Types::Response.new(
            result_caster: ->(r) { Types::Message.new(**r.to_h) },
            **Client.post(
              url: build_url('sendAudio'),
              parameters: {
                chat_id: chat_id,
                audio: audio,
                caption: caption,
                duration: duration,
                performer: performer,
                title: title,
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
