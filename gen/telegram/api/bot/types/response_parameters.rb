module Telegram
  module API
    module Bot
      module Types
        # Contains information about why a request was unsuccessful.
        #
        # @!attribute [rw] migrate_to_chat_id
        #   @return [Integer] _Optional_. The group has been migrated to a supergroup with the specified identifier. This number may be greater than 32 bits and some programming languages may have difficulty/silent defects in interpreting it. But it is smaller than 52 bits, so a signed 64 bit integer or double-precision float type are safe for storing this identifier.
        # @!attribute [rw] retry_after
        #   @return [Integer] _Optional_. In case of exceeding flood control, the number of seconds left to wait before the request can be repeated
        ResponseParameters = Struct.new(:migrate_to_chat_id, :retry_after) do
          def initialize(migrate_to_chat_id: nil, retry_after: nil)
            super(migrate_to_chat_id, retry_after)
          end
        end
      end
    end
  end
end
