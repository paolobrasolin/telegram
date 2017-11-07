module Telegram
  module API
    module Bot
      module Types
        # Represents a result of an inline query that was chosen by the user and sent to their chat partner.
        #
        # *Note:* It is necessary to enable {https://core.telegram.org/bots/inline#collecting-feedback inline feednack} via {https://t.me/botfather @Botfather} in order to receive these objects in updates.
        #
        # @!attribute [rw] result_id
        #   @return [String] The unique identifier for the result that was chosen
        # @!attribute [rw] from
        #   @return [User] The user that chose the result
        # @!attribute [rw] location
        #   @return [Location] _Optional_. Sender location, only for bots that require user location
        # @!attribute [rw] inline_message_id
        #   @return [String] _Optional_. Identifier of the sent inline message. Available only if there is an inline keyboard attached to the message. Will be also received in callback queries and can be used to edit the message.
        # @!attribute [rw] query
        #   @return [String] The query that was used to obtain the result
        ChosenInlineResult = Struct.new(:result_id, :from, :location, :inline_message_id, :query) do
          def initialize(result_id:, from:, location:, inline_message_id:, query:)
            super(result_id, from, location, inline_message_id, query)
          end
        end
      end
    end
  end
end
