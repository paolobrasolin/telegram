module Telegram
  module API
    module Bot
      module Types
        # Represents a Game.
        #
        # *Note:* This will only work in Telegram versions released after October 1, 2016. Older clients will not display any inline results if a game result is among them.
        #
        # @!attribute [rw] type
        #   @return [String] Type of the result, must be _game_
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this result, 1-64 bytes
        # @!attribute [rw] game_short_name
        #   @return [String] Short name of the game
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup] _Optional_. {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating Inline keyboard} attached to the message
        InlineQueryResultGame = Struct.new(:type, :id, :game_short_name, :reply_markup) do
          def initialize(type:, id:, game_short_name:, reply_markup: nil)
            super(type, id, game_short_name, reply_markup)
          end
        end
      end
    end
  end
end
