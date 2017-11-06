module Telegram
  module API
    module Bot
      module Methods
        # Use this method to delete a sticker from a set created by the bot. Returns _True_ on success.
        #
        # @param sticker [String] File identifier of the sticker
        def delete_sticker_from_set(
          sticker:
        )
          url = build_url method_name: __method__.to_s.delete('_')
          parameters = method_parameters_hash __method__, binding
          Telegram::API::Bot::Client.post url: url, parameters: parameters
        end
      end
    end
  end
end
