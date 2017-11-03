module Telegram
  module Bot
    module Methods
      # Use this method to add a new sticker to a set created by the bot. Returns _True_ on success.
      #
      # @param user_id [Integer] User identifier of sticker set owner
      # @param name [String] Sticker set name
      # @param png_sticker [InputFile or String] *Png* image with the sticker, must be up to 512 kilobytes in size, dimensions must not exceed 512px, and either width or height must be exactly 512px. Pass a _file_id_ as a String to send a file that already exists on the Telegram servers, pass an HTTP URL as a String for Telegram to get a file from the Internet, or upload a new one using multipart/form-data. More info on Sending Files »
      # @param emojis [String] One or more emoji corresponding to the sticker
      # @param mask_position [MaskPosition] A JSON-serialized object for position where the mask should be placed on faces
      def self.add_sticker_to_set(
        user_id:,
        name:,
        png_sticker:,
        emojis:,
        mask_position: nil
      )
      end
    end
  end
end
