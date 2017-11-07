module Telegram
  module API
    module Bot
      module Types
        # This object represents a shipping address.
        #
        # @!attribute [rw] country_code
        #   @return [String] ISO 3166-1 alpha-2 country code
        # @!attribute [rw] state
        #   @return [String] State, if applicable
        # @!attribute [rw] city
        #   @return [String] City
        # @!attribute [rw] street_line1
        #   @return [String] First line for the address
        # @!attribute [rw] street_line2
        #   @return [String] Second line for the address
        # @!attribute [rw] post_code
        #   @return [String] Address post code
        ShippingAddress = Struct.new(:country_code, :state, :city, :street_line1, :street_line2, :post_code) do
          def initialize(country_code:, state:, city:, street_line1:, street_line2:, post_code:)
            super(country_code, state, city, street_line1, street_line2, post_code)
          end
        end
      end
    end
  end
end
