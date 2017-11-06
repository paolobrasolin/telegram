module Telegram
  module API
    module Bot
      module Methods
        # Use this method to get a sticker set. On success, a StickerSet object is returned.
        #
        # @param name [String] Name of the sticker set
        def get_sticker_set(
          name:
        )
          url = build_url method_name: __method__.to_s.delete('_')
          parameters = method_parameters_hash __method__, binding
          Telegram::API::Bot::Client.post url: url, parameters: parameters
        end
      end
    end
  end
end
