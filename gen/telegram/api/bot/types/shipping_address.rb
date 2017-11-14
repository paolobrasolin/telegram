# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#shippingaddress official documentation}.
        #
        # @!attribute [rw] country_code
        #   @return [String]
        # @!attribute [rw] state
        #   @return [String]
        # @!attribute [rw] city
        #   @return [String]
        # @!attribute [rw] street_line1
        #   @return [String]
        # @!attribute [rw] street_line2
        #   @return [String]
        # @!attribute [rw] post_code
        #   @return [String]
        ShippingAddress = Struct.new(
          :country_code,
          :state,
          :city,
          :street_line1,
          :street_line2,
          :post_code
        ) do
          def initialize(
            country_code:,
            state:,
            city:,
            street_line1:,
            street_line2:,
            post_code:
          )
            super(
              country_code&.to_s,
              state&.to_s,
              city&.to_s,
              street_line1&.to_s,
              street_line2&.to_s,
              post_code&.to_s
            )
          end
        end
      end
    end
  end
end
