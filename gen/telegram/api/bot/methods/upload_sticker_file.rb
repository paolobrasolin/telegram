module Telegram
  module API
    module Bot
      module Methods
        # Use this method to upload a .png file with a sticker for later use in _createNewStickerSet_ and _addStickerToSet_ methods (can be used multiple times). Returns the uploaded File on success.
        #
        # @param user_id [Integer] User identifier of sticker file owner
        # @param png_sticker [InputFile] *Png* image with the sticker, must be up to 512 kilobytes in size, dimensions must not exceed 512px, and either width or height must be exactly 512px. More info on Sending Files »
        def self.upload_sticker_file(
          user_id:,
          png_sticker:
        )
        end
      end
    end
  end
end
