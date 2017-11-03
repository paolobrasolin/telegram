module Telegram
  module API
    module Bot
      module Methods
        # Use this method to get data for high score tables. Will return the score of the specified user and several of his neighbors in a game. On success, returns an _Array_ of GameHighScore objects.
        #
        # This method will currently return scores for the target user, plus two of his closest neighbors on each side. Will also return the top three users if the user and his neighbors are not among them. Please note that this behavior is subject to change.
        #
        # @param user_id [Integer] Target user id
        # @param chat_id [Integer] Required if _inline_message_id_ is not specified. Unique identifier for the target chat
        # @param message_id [Integer] Required if _inline_message_id_ is not specified. Identifier of the sent message
        # @param inline_message_id [String] Required if _chat_id_ and _message_id_ are not specified. Identifier of the inline message
        def self.get_game_high_scores(
          user_id:,
          chat_id: nil,
          message_id: nil,
          inline_message_id: nil
        )
        end
      end
    end
  end
end
