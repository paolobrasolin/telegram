# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inputvenuemessagecontent official documentation}.
        #
        # @!attribute [rw] latitude
        #   @return [Float]
        # @!attribute [rw] longitude
        #   @return [Float]
        # @!attribute [rw] title
        #   @return [String]
        # @!attribute [rw] address
        #   @return [String]
        # @!attribute [rw] foursquare_id
        #   @return [String, nil]
        InputVenueMessageContent = Struct.new(
          :latitude,
          :longitude,
          :title,
          :address,
          :foursquare_id
        ) do
          def initialize(
            latitude:,
            longitude:,
            title:,
            address:,
            foursquare_id: nil
          )
            super(
              latitude&.to_f,
              longitude&.to_f,
              title&.to_s,
              address&.to_s,
              (foursquare_id&.to_s unless foursquare_id.nil?)
            )
          end
        end
      end
    end
  end
end
