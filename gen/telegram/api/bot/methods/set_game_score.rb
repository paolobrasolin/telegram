module Telegram
  module API
    module Bot
      module Methods
        # Use this method to set the score of the specified user in a game. On success, if the message was sent by the bot, returns the edited Message, otherwise returns _True_. Returns an error, if the new score is not greater than the user's current score in the chat and _force_ is _False_.
        #
        # @param user_id [Integer] User identifier
        # @param score [Integer] New score, must be non-negative
        # @param force [Boolean] Pass True, if the high score is allowed to decrease. This can be useful when fixing mistakes or banning cheaters
        # @param disable_edit_message [Boolean] Pass True, if the game message should not be automatically edited to include the current scoreboard
        # @param chat_id [Integer] Required if _inline_message_id_ is not specified. Unique identifier for the target chat
        # @param message_id [Integer] Required if _inline_message_id_ is not specified. Identifier of the sent message
        # @param inline_message_id [String] Required if _chat_id_ and _message_id_ are not specified. Identifier of the inline message
        def self.set_game_score(
          user_id:,
          score:,
          force: nil,
          disable_edit_message: nil,
          chat_id: nil,
          message_id: nil,
          inline_message_id: nil
        )
        end
      end
    end
  end
end
