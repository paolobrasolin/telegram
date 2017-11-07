module Telegram
  module API
    module Bot
      module Types
        # This object represents one row of the high scores table for a game.
        #
        # 
        #
        # And that‘s about all we’ve got for now.<br>If you've got any questions, please check out our {https://core.telegram.org/bots/faq *Bot FAQ »*}
        #
        # @!attribute [rw] position
        #   @return [Integer] Position in high score table for the game
        # @!attribute [rw] user
        #   @return [User] User
        # @!attribute [rw] score
        #   @return [Integer] Score
        GameHighScore = Struct.new(:position, :user, :score) do
          def initialize(position:, user:, score:)
            super(position, user, score)
          end
        end
      end
    end
  end
end
