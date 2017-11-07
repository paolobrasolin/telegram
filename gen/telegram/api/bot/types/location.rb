module Telegram
  module API
    module Bot
      module Types
        # This object represents a point on the map.
        #
        # @!attribute [rw] longitude
        #   @return [Float] Longitude as defined by sender
        # @!attribute [rw] latitude
        #   @return [Float] Latitude as defined by sender
        Location = Struct.new(:longitude, :latitude) do
          def initialize(longitude:, latitude:)
            super(longitude, latitude)
          end
        end
      end
    end
  end
end
