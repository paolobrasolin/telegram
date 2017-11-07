module Telegram
  module API
    module Bot
      module Types
        # Represents the content of a contact message to be sent as the result of an inline query.
        #
        # *Note:* This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
        #
        # @!attribute [rw] phone_number
        #   @return [String] Contact's phone number
        # @!attribute [rw] first_name
        #   @return [String] Contact's first name
        # @!attribute [rw] last_name
        #   @return [String] _Optional_. Contact's last name
        InputContactMessageContent = Struct.new(:phone_number, :first_name, :last_name) do
          def initialize(phone_number:, first_name:, last_name: nil)
            super(phone_number, first_name, last_name)
          end
        end
      end
    end
  end
end
