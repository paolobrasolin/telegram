# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#sendvoice official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param voice [InputFile, String]
        # @param caption [String, nil]
        # @param duration [Integer, nil]
        # @param disable_notification [Boolean, nil]
        # @param reply_to_message_id [Integer, nil]
        # @param reply_markup [InlineKeyboardMarkup, ReplyKeyboardMarkup, ReplyKeyboardRemove, ForceReply, nil]
        def send_voice(
          chat_id:,
          voice:,
          caption: nil,
          duration: nil,
          disable_notification: nil,
          reply_to_message_id: nil,
          reply_markup: nil
        )
          Client.post url: build_url('sendVoice'),
                      parameters: {
                        chat_id: chat_id,
                        voice: voice,
                        caption: caption,
                        duration: duration,
                        disable_notification: disable_notification,
                        reply_to_message_id: reply_to_message_id,
                        reply_markup: reply_markup
                      }
        end
      end
    end
  end
end
