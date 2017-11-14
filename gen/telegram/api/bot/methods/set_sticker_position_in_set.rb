# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#setstickerpositioninset official documentation}.
        #
        # @param sticker [String]
        # @param position [Integer]
        def set_sticker_position_in_set(
          sticker:,
          position:
        )
          Client.post url: build_url('setStickerPositionInSet'),
                      parameters: {
                        sticker: sticker,
                        position: position
                      }
        end
      end
    end
  end
end
