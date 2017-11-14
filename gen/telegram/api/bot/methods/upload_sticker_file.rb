# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#uploadstickerfile official documentation}.
        #
        # @param user_id [Integer]
        # @param png_sticker [InputFile]
        def upload_sticker_file(
          user_id:,
          png_sticker:
        )
          Client.post url: build_url('uploadStickerFile'),
                      parameters: {
                        user_id: user_id,
                        png_sticker: png_sticker
                      }
        end
      end
    end
  end
end
