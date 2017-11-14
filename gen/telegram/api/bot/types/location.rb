# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#location official documentation}.
        #
        # @!attribute [rw] longitude
        #   @return [Float]
        # @!attribute [rw] latitude
        #   @return [Float]
        Location = Struct.new(
          :longitude,
          :latitude
        ) do
          def initialize(
            longitude:,
            latitude:
          )
            super(
              longitude&.to_f,
              latitude&.to_f
            )
          end
        end
      end
    end
  end
end
