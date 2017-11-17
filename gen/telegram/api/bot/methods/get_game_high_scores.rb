# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#getgamehighscores official documentation}.
        #
        # @param user_id [Integer]
        # @param chat_id [Integer, nil]
        # @param message_id [Integer, nil]
        # @param inline_message_id [String, nil]
        def get_game_high_scores(
          user_id:,
          chat_id: nil,
          message_id: nil,
          inline_message_id: nil
        )
          Types::Response.new(
            **Client.post(
              url: build_url('getGameHighScores'),
              parameters: {
                user_id: user_id,
                chat_id: chat_id,
                message_id: message_id,
                inline_message_id: inline_message_id
              }
            )
          )
        end
      end
    end
  end
end
