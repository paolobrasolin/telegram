# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#sendgame official documentation}.
        #
        # @param chat_id [Integer]
        # @param game_short_name [String]
        # @param disable_notification [Boolean, nil]
        # @param reply_to_message_id [Integer, nil]
        # @param reply_markup [InlineKeyboardMarkup, nil]
        def send_game(
          chat_id:,
          game_short_name:,
          disable_notification: nil,
          reply_to_message_id: nil,
          reply_markup: nil
        )
          Client.post url: build_url('sendGame'),
                      parameters: {
                        chat_id: chat_id,
                        game_short_name: game_short_name,
                        disable_notification: disable_notification,
                        reply_to_message_id: reply_to_message_id,
                        reply_markup: reply_markup
                      }
        end
      end
    end
  end
end
