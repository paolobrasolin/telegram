# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#addstickertoset official documentation}.
        #
        # @param user_id [Integer]
        # @param name [String]
        # @param png_sticker [InputFile, String]
        # @param emojis [String]
        # @param mask_position [MaskPosition, nil]
        def add_sticker_to_set(
          user_id:,
          name:,
          png_sticker:,
          emojis:,
          mask_position: nil
        )
          Types::Response.new(
            **Client.post(
              url: build_url('addStickerToSet'),
              parameters: {
                user_id: user_id,
                name: name,
                png_sticker: png_sticker,
                emojis: emojis,
                mask_position: mask_position
              }
            )
          )
        end
      end
    end
  end
end
