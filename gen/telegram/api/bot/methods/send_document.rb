# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#senddocument official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param document [InputFile, String]
        # @param caption [String, nil]
        # @param disable_notification [Boolean, nil]
        # @param reply_to_message_id [Integer, nil]
        # @param reply_markup [InlineKeyboardMarkup, ReplyKeyboardMarkup, ReplyKeyboardRemove, ForceReply, nil]
        def send_document(
          chat_id:,
          document:,
          caption: nil,
          disable_notification: nil,
          reply_to_message_id: nil,
          reply_markup: nil
        )
          Client.post url: build_url('sendDocument'),
                      parameters: {
                        chat_id: chat_id,
                        document: document,
                        caption: caption,
                        disable_notification: disable_notification,
                        reply_to_message_id: reply_to_message_id,
                        reply_markup: reply_markup
                      }
        end
      end
    end
  end
end
