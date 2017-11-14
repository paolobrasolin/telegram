# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#getstickerset official documentation}.
        #
        # @param name [String]
        def get_sticker_set(
          name:
        )
          Client.post url: build_url('getStickerSet'),
                      parameters: {
                        name: name
                      }
        end
      end
    end
  end
end
