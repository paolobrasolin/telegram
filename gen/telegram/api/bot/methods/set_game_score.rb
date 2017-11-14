# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#setgamescore official documentation}.
        #
        # @param user_id [Integer]
        # @param score [Integer]
        # @param force [Boolean, nil]
        # @param disable_edit_message [Boolean, nil]
        # @param chat_id [Integer, nil]
        # @param message_id [Integer, nil]
        # @param inline_message_id [String, nil]
        def set_game_score(
          user_id:,
          score:,
          force: nil,
          disable_edit_message: nil,
          chat_id: nil,
          message_id: nil,
          inline_message_id: nil
        )
          Client.post url: build_url('setGameScore'),
                      parameters: {
                        user_id: user_id,
                        score: score,
                        force: force,
                        disable_edit_message: disable_edit_message,
                        chat_id: chat_id,
                        message_id: message_id,
                        inline_message_id: inline_message_id
                      }
        end
      end
    end
  end
end
