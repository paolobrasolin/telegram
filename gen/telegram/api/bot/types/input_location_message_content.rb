module Telegram
  module API
    module Bot
      module Types
        # Represents the content of a location message to be sent as the result of an inline query.
        #
        # *Note:* This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
        #
        # @!attribute [rw] latitude
        #   @return [Float] Latitude of the location in degrees
        # @!attribute [rw] longitude
        #   @return [Float] Longitude of the location in degrees
        # @!attribute [rw] live_period
        #   @return [Integer] _Optional_. Period in seconds for which the location can be updated, should be between 60 and 86400.
        InputLocationMessageContent = Struct.new(:latitude, :longitude, :live_period) do
          def initialize(latitude:, longitude:, live_period:)
            super(latitude, longitude, live_period)
          end
        end
      end
    end
  end
end
