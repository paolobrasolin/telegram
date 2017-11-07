module Telegram
  module API
    module Bot
      module Types
        # This object represents a Telegram user or bot.
        #
        # @!attribute [rw] id
        #   @return [Integer] Unique identifier for this user or bot
        # @!attribute [rw] is_bot
        #   @return [Boolean] True, if this user is a bot
        # @!attribute [rw] first_name
        #   @return [String] User‘s or bot’s first name
        # @!attribute [rw] last_name
        #   @return [String] _Optional_. User‘s or bot’s last name
        # @!attribute [rw] username
        #   @return [String] _Optional_. User‘s or bot’s username
        # @!attribute [rw] language_code
        #   @return [String] _Optional_. {https://en.wikipedia.org/wiki/IETF_language_tag IETF language tag} of the user's language
        User = Struct.new(:id, :is_bot, :first_name, :last_name, :username, :language_code) do
          def initialize(id:, is_bot:, first_name:, last_name: nil, username: nil, language_code: nil)
            super(id, is_bot, first_name, last_name, username, language_code)
          end
        end
      end
    end
  end
end
