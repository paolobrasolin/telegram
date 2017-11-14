# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inputlocationmessagecontent official documentation}.
        #
        # @!attribute [rw] latitude
        #   @return [Float]
        # @!attribute [rw] longitude
        #   @return [Float]
        # @!attribute [rw] live_period
        #   @return [Integer, nil]
        InputLocationMessageContent = Struct.new(
          :latitude,
          :longitude,
          :live_period
        ) do
          def initialize(
            latitude:,
            longitude:,
            live_period: nil
          )
            super(
              latitude&.to_f,
              longitude&.to_f,
              (live_period&.to_i unless live_period.nil?)
            )
          end
        end
      end
    end
  end
end
