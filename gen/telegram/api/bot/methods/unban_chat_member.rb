module Telegram
  module API
    module Bot
      module Methods
        # Use this method to unban a previously kicked user in a supergroup or channel. The user will *not* return to the group or channel automatically, but will be able to join via link, etc. The bot must be an administrator for this to work. Returns _True_ on success.
        #
        # @param chat_id [Integer or String] Unique identifier for the target group or username of the target supergroup or channel (in the format <code>@username</code>)
        # @param user_id [Integer] Unique identifier of the target user
        def self.unban_chat_member(
          chat_id:,
          user_id:
        )
        end
      end
    end
  end
end
