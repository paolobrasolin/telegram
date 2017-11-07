module Telegram
  module API
    module Bot
      module Types
        # This object represents a game. Use BotFather to create and edit games, their short names will act as unique identifiers.
        #
        # @!attribute [rw] title
        #   @return [String] Title of the game
        # @!attribute [rw] description
        #   @return [String] Description of the game
        # @!attribute [rw] photo
        #   @return [Array<PhotoSize>] Photo that will be displayed in the game message in chats.
        # @!attribute [rw] text
        #   @return [String] _Optional_. Brief description of the game or high scores included in the game message. Can be automatically edited to include current high scores for the game when the bot calls setGameScore, or manually edited using editMessageText. 0-4096 characters.
        # @!attribute [rw] text_entities
        #   @return [Array<MessageEntity>] _Optional_. Special entities that appear in _text_, such as usernames, URLs, bot commands, etc.
        # @!attribute [rw] animation
        #   @return [Animation] _Optional_. Animation that will be displayed in the game message in chats. Upload via {https://t.me/botfather BotFather}
        Game = Struct.new(:title, :description, :photo, :text, :text_entities, :animation) do
          def initialize(title:, description:, photo:, text: nil, text_entities: nil, animation: nil)
            super(title, description, photo, text, text_entities, animation)
          end
        end
      end
    end
  end
end
