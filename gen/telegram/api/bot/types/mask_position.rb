# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#maskposition official documentation}.
        #
        # @!attribute [rw] point
        #   @return [String]
        # @!attribute [rw] x_shift
        #   @return [Float]
        # @!attribute [rw] y_shift
        #   @return [Float]
        # @!attribute [rw] scale
        #   @return [Float]
        MaskPosition = Struct.new(
          :point,
          :x_shift,
          :y_shift,
          :scale
        ) do
          def initialize(
            point:,
            x_shift:,
            y_shift:,
            scale:
          )
            super(
              point&.to_s,
              x_shift&.to_f,
              y_shift&.to_f,
              scale&.to_f
            )
          end
        end
      end
    end
  end
end
