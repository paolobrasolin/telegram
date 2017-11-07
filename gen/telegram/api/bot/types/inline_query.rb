module Telegram
  module API
    module Bot
      module Types
        # This object represents an incoming inline query. When the user sends an empty query, your bot could return some default or trending results.
        #
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this query
        # @!attribute [rw] from
        #   @return [User] Sender
        # @!attribute [rw] location
        #   @return [Location] _Optional_. Sender location, only for bots that request user location
        # @!attribute [rw] query
        #   @return [String] Text of the query (up to 512 characters)
        # @!attribute [rw] offset
        #   @return [String] Offset of the results to be returned, can be controlled by the bot
        InlineQuery = Struct.new(:id, :from, :location, :query, :offset) do
          def initialize(id:, from:, location: nil, query:, offset:)
            super(id, from, location, query, offset)
          end
        end
      end
    end
  end
end
