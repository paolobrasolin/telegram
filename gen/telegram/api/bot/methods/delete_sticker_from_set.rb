# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#deletestickerfromset official documentation}.
        #
        # @param sticker [String]
        def delete_sticker_from_set(
          sticker:
        )
          Client.post url: build_url('deleteStickerFromSet'),
                      parameters: {
                        sticker: sticker
                      }
        end
      end
    end
  end
end
