module Telegram
  module API
    module Bot
      module Types
        # This object describes the position on faces where a mask should be placed by default.
        #
        # @!attribute [rw] point
        #   @return [String] The part of the face relative to which the mask should be placed. One of “forehead”, “eyes”, “mouth”, or “chin”.
        # @!attribute [rw] x_shift
        #   @return [Float] Shift by X-axis measured in widths of the mask scaled to the face size, from left to right. For example, choosing -1.0 will place mask just to the left of the default mask position.
        # @!attribute [rw] y_shift
        #   @return [Float] Shift by Y-axis measured in heights of the mask scaled to the face size, from top to bottom. For example, 1.0 will place the mask just below the default mask position.
        # @!attribute [rw] scale
        #   @return [Float] Mask scaling coefficient. For example, 2.0 means double size.
        MaskPosition = Struct.new(:point, :x_shift, :y_shift, :scale) do
          def initialize(point:, x_shift:, y_shift:, scale:)
            super(point, x_shift, y_shift, scale)
          end
        end
      end
    end
  end
end
