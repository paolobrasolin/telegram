module Telegram
  module Bot
    module Methods
      # Use this method to create new sticker set owned by a user. The bot will be able to edit the created sticker set. Returns _True_ on success.
      #
      # @param user_id [Integer] User identifier of created sticker set owner
      # @param name [String] Short name of sticker set, to be used in <code>t.me/addstickers/</code> URLs (e.g., _animals_). Can contain only english letters, digits and underscores. Must begin with a letter, can't contain consecutive underscores and must end in _“_by_<bot username>”_</bot>. _<bot_username>_</bot_username> is case insensitive. 1-64 characters.
      # @param title [String] Sticker set title, 1-64 characters
      # @param png_sticker [InputFile or String] *Png* image with the sticker, must be up to 512 kilobytes in size, dimensions must not exceed 512px, and either width or height must be exactly 512px. Pass a _file_id_ as a String to send a file that already exists on the Telegram servers, pass an HTTP URL as a String for Telegram to get a file from the Internet, or upload a new one using multipart/form-data. More info on Sending Files »
      # @param emojis [String] One or more emoji corresponding to the sticker
      # @param contains_masks [Boolean] Pass _True_, if a set of mask stickers should be created
      # @param mask_position [MaskPosition] A JSON-serialized object for position where the mask should be placed on faces
      def self.create_new_sticker_set(
        user_id:,
        name:,
        title:,
        png_sticker:,
        emojis:,
        contains_masks: nil,
        mask_position: nil
      )
      end
    end
  end
end
