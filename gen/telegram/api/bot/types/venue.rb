# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#venue official documentation}.
        #
        # @!attribute [rw] location
        #   @return [Location]
        # @!attribute [rw] title
        #   @return [String]
        # @!attribute [rw] address
        #   @return [String]
        # @!attribute [rw] foursquare_id
        #   @return [String, nil]
        Venue = Struct.new(
          :location,
          :title,
          :address,
          :foursquare_id
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            location:,
            title:,
            address:,
            foursquare_id: nil
          )
            super(
              Types::Location.new(**location.to_h),
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
