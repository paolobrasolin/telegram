module Telegram
  module API
    module Bot
      module Types
        # This object contains information about an incoming shipping query.
        #
        # @!attribute [rw] id
        #   @return [String] Unique query identifier
        # @!attribute [rw] from
        #   @return [User] User who sent the query
        # @!attribute [rw] invoice_payload
        #   @return [String] Bot specified invoice payload
        # @!attribute [rw] shipping_address
        #   @return [ShippingAddress] User specified shipping address
        ShippingQuery = Struct.new(:id, :from, :invoice_payload, :shipping_address) do
          def initialize(id:, from:, invoice_payload:, shipping_address:)
            super(id, from, invoice_payload, shipping_address)
          end
        end
      end
    end
  end
end
