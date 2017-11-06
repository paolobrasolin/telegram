module Telegram
  module API
    module Bot
      module Methods
        # Use this method to kick a user from a group, a supergroup or a channel. In the case of supergroups and channels, the user will not be able to return to the group on their own using invite links, etc., unless unbanned first. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Returns _True_ on success.
        #
        # Note: In regular groups (non-supergroups), this method will only work if the ‘All Members Are Admins’ setting is off in the target group. Otherwise members may only be removed by the group's creator or by the member that added them.
        #
        # @param chat_id [Integer or String] Unique identifier for the target group or username of the target supergroup or channel (in the format <code>@channelusername</code>)
        # @param user_id [Integer] Unique identifier of the target user
        # @param until_date [Integer] Date when the user will be unbanned, unix time. If user is banned for more than 366 days or less than 30 seconds from the current time they are considered to be banned forever
        def kick_chat_member(
          chat_id:,
          user_id:,
          until_date: nil
        )
          url = build_url method_name: __method__.to_s.delete('_')
          parameters = method_parameters_hash __method__, binding
          Telegram::API::Bot::Client.post url: url, parameters: parameters
        end
      end
    end
  end
end
