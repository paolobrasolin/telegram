module Telegram
  module API
    module Bot
      module Types
        # Represents the content of a venue message to be sent as the result of an inline query.
        #
        # *Note:* This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
        #
        # @!attribute [rw] latitude
        #   @return [Float] Latitude of the venue in degrees
        # @!attribute [rw] longitude
        #   @return [Float] Longitude of the venue in degrees
        # @!attribute [rw] title
        #   @return [String] Name of the venue
        # @!attribute [rw] address
        #   @return [String] Address of the venue
        # @!attribute [rw] foursquare_id
        #   @return [String] _Optional_. Foursquare identifier of the venue, if known
        InputVenueMessageContent = Struct.new(:latitude, :longitude, :title, :address, :foursquare_id) do
          def initialize(latitude:, longitude:, title:, address:, foursquare_id:)
            super(latitude, longitude, title, address, foursquare_id)
          end
        end
      end
    end
  end
end
