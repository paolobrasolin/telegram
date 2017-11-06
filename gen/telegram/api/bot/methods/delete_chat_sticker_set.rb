module Telegram
  module API
    module Bot
      module Methods
        # Use this method to delete a group sticker set from a supergroup. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Use the field _can_set_sticker_set_ optionally returned in _getChat_ requests to check if the bot can use this method. Returns _True_ on success.
        #
        # @param chat_id [Integer or String] Unique identifier for the target chat or username of the target supergroup (in the format <code>@supergroupusername</code>)
        def delete_chat_sticker_set(
          chat_id:
        )
          url = build_url method_name: __method__.to_s.delete('_')
          parameters = method_parameters_hash __method__, binding
          Telegram::API::Bot::Client.post url: url, parameters: parameters
        end
      end
    end
  end
end
