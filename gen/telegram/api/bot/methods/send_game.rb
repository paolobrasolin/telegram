module Telegram
  module API
    module Bot
      module Methods
        # Use this method to send a game. On success, the sent Message is returned.
        #
        # @param chat_id [Integer] Unique identifier for the target chat
        # @param game_short_name [String] Short name of the game, serves as the unique identifier for the game. Set up your games via {https://t.me/botfather Botfather}.
        # @param disable_notification [Boolean] Sends the message {https://telegram.org/blog/channels-2-0#silent-messages silently}. Users will receive a notification with no sound.
        # @param reply_to_message_id [Integer] If the message is a reply, ID of the original message
        # @param reply_markup [InlineKeyboardMarkup] A JSON-serialized object for an {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating inline keyboard}. If empty, one ‘Play game_title’ button will be shown. If not empty, the first button must launch the game.
        def send_game(
          chat_id:,
          game_short_name:,
          disable_notification: nil,
          reply_to_message_id: nil,
          reply_markup: nil
        )
          url = build_url method_name: __method__.to_s.delete('_')
          parameters = method_parameters_hash __method__, binding
          Telegram::API::Bot::Client.post url: url, parameters: parameters
        end
      end
    end
  end
end
