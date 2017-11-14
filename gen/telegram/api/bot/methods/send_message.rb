# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#sendmessage official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param text [String]
        # @param parse_mode [String, nil]
        # @param disable_web_page_preview [Boolean, nil]
        # @param disable_notification [Boolean, nil]
        # @param reply_to_message_id [Integer, nil]
        # @param reply_markup [InlineKeyboardMarkup, ReplyKeyboardMarkup, ReplyKeyboardRemove, ForceReply, nil]
        def send_message(
          chat_id:,
          text:,
          parse_mode: nil,
          disable_web_page_preview: nil,
          disable_notification: nil,
          reply_to_message_id: nil,
          reply_markup: nil
        )
          Client.post url: build_url('sendMessage'),
                      parameters: {
                        chat_id: chat_id,
                        text: text,
                        parse_mode: parse_mode,
                        disable_web_page_preview: disable_web_page_preview,
                        disable_notification: disable_notification,
                        reply_to_message_id: reply_to_message_id,
                        reply_markup: reply_markup
                      }
        end
      end
    end
  end
end
