module Telegram
  module API
    module Bot
      module Types
        # This object represents a phone contact.
        #
        # @!attribute [rw] phone_number
        #   @return [String] Contact's phone number
        # @!attribute [rw] first_name
        #   @return [String] Contact's first name
        # @!attribute [rw] last_name
        #   @return [String] _Optional_. Contact's last name
        # @!attribute [rw] user_id
        #   @return [Integer] _Optional_. Contact's user identifier in Telegram
        Contact = Struct.new(:phone_number, :first_name, :last_name, :user_id) do
          def initialize(phone_number:, first_name:, last_name:, user_id:)
            super(phone_number, first_name, last_name, user_id)
          end
        end
      end
    end
  end
end
