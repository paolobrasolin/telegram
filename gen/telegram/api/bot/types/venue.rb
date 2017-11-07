module Telegram
  module API
    module Bot
      module Types
        # This object represents a venue.
        #
        # @!attribute [rw] location
        #   @return [Location] Venue location
        # @!attribute [rw] title
        #   @return [String] Name of the venue
        # @!attribute [rw] address
        #   @return [String] Address of the venue
        # @!attribute [rw] foursquare_id
        #   @return [String] _Optional_. Foursquare identifier of the venue
        Venue = Struct.new(:location, :title, :address, :foursquare_id) do
          def initialize(location:, title:, address:, foursquare_id:)
            super(location, title, address, foursquare_id)
          end
        end
      end
    end
  end
end
