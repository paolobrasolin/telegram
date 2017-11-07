module Telegram
  module API
    module Bot
      module Types
        # This object represents one button of the reply keyboard. For simple text buttons _String_ can be used instead of this object to specify text of the button. Optional fields are mutually exclusive.
        #
        # *Note:* _request_contact_ and _request_location_ options will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
        #
        # @!attribute [rw] text
        #   @return [String] Text of the button. If none of the optional fields are used, it will be sent as a message when the button is pressed
        # @!attribute [rw] request_contact
        #   @return [Boolean] _Optional_. If _True_, the user's phone number will be sent as a contact when the button is pressed. Available in private chats only
        # @!attribute [rw] request_location
        #   @return [Boolean] _Optional_. If _True_, the user's current location will be sent when the button is pressed. Available in private chats only
        KeyboardButton = Struct.new(:text, :request_contact, :request_location) do
          def initialize(text:, request_contact:, request_location:)
            super(text, request_contact, request_location)
          end
        end
      end
    end
  end
end
