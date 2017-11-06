module Telegram
  module API
    module Bot
      module Methods
        # Use this method to move a sticker in a set created by the bot to a specific position . Returns _True_ on success.
        #
        # @param sticker [String] File identifier of the sticker
        # @param position [Integer] New sticker position in the set, zero-based
        def set_sticker_position_in_set(
          sticker:,
          position:
        )
          url = build_url method_name: __method__.to_s.delete('_')
          parameters = method_parameters_hash __method__, binding
          Telegram::API::Bot::Client.post url: url, parameters: parameters
        end
      end
    end
  end
end
