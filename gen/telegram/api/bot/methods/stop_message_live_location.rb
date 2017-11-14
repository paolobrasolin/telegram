# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#stopmessagelivelocation official documentation}.
        #
        # @param chat_id [Integer, String, nil]
        # @param message_id [Integer, nil]
        # @param inline_message_id [String, nil]
        # @param reply_markup [InlineKeyboardMarkup, nil]
        def stop_message_live_location(
          chat_id: nil,
          message_id: nil,
          inline_message_id: nil,
          reply_markup: nil
        )
          Client.post url: build_url('stopMessageLiveLocation'),
                      parameters: {
                        chat_id: chat_id,
                        message_id: message_id,
                        inline_message_id: inline_message_id,
                        reply_markup: reply_markup
                      }
        end
      end
    end
  end
end