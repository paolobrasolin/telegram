# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#deletechatstickerset official documentation}.
        #
        # @param chat_id [Integer, String]
        def delete_chat_sticker_set(
          chat_id:
        )
          Types::Response.new(
            **Client.post(
              url: build_url('deleteChatStickerSet'),
              parameters: {
                chat_id: chat_id
              }
            )
          )
        end
      end
    end
  end
end
