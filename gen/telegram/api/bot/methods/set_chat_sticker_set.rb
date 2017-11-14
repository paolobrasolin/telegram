# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#setchatstickerset official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param sticker_set_name [String]
        def set_chat_sticker_set(
          chat_id:,
          sticker_set_name:
        )
          Client.post url: build_url('setChatStickerSet'),
                      parameters: {
                        chat_id: chat_id,
                        sticker_set_name: sticker_set_name
                      }
        end
      end
    end
  end
end
