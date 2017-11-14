# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#editmessagetext official documentation}.
        #
        # @param chat_id [Integer, String, nil]
        # @param message_id [Integer, nil]
        # @param inline_message_id [String, nil]
        # @param text [String]
        # @param parse_mode [String, nil]
        # @param disable_web_page_preview [Boolean, nil]
        # @param reply_markup [InlineKeyboardMarkup, nil]
        def edit_message_text(
          chat_id: nil,
          message_id: nil,
          inline_message_id: nil,
          text:,
          parse_mode: nil,
          disable_web_page_preview: nil,
          reply_markup: nil
        )
          Client.post url: build_url('editMessageText'),
                      parameters: {
                        chat_id: chat_id,
                        message_id: message_id,
                        inline_message_id: inline_message_id,
                        text: text,
                        parse_mode: parse_mode,
                        disable_web_page_preview: disable_web_page_preview,
                        reply_markup: reply_markup
                      }
        end
      end
    end
  end
end
