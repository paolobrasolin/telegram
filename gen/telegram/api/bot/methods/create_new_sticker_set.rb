# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#createnewstickerset official documentation}.
        #
        # @param user_id [Integer]
        # @param name [String]
        # @param title [String]
        # @param png_sticker [InputFile, String]
        # @param emojis [String]
        # @param contains_masks [Boolean, nil]
        # @param mask_position [MaskPosition, nil]
        def create_new_sticker_set(
          user_id:,
          name:,
          title:,
          png_sticker:,
          emojis:,
          contains_masks: nil,
          mask_position: nil
        )
          Client.post url: build_url('createNewStickerSet'),
                      parameters: {
                        user_id: user_id,
                        name: name,
                        title: title,
                        png_sticker: png_sticker,
                        emojis: emojis,
                        contains_masks: contains_masks,
                        mask_position: mask_position
                      }
        end
      end
    end
  end
end
