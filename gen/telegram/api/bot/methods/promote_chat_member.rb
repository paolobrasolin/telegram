module Telegram
  module API
    module Bot
      module Methods
        # Use this method to promote or demote a user in a supergroup or a channel. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Pass _False_ for all boolean parameters to demote a user. Returns _True_ on success.
        #
        # @param chat_id [Integer or String] Unique identifier for the target chat or username of the target channel (in the format <code>@channelusername</code>)
        # @param user_id [Integer] Unique identifier of the target user
        # @param can_change_info [Boolean] Pass True, if the administrator can change chat title, photo and other settings
        # @param can_post_messages [Boolean] Pass True, if the administrator can create channel posts, channels only
        # @param can_edit_messages [Boolean] Pass True, if the administrator can edit messages of other users, channels only
        # @param can_delete_messages [Boolean] Pass True, if the administrator can delete messages of other users
        # @param can_invite_users [Boolean] Pass True, if the administrator can invite new users to the chat
        # @param can_restrict_members [Boolean] Pass True, if the administrator can restrict, ban or unban chat members
        # @param can_pin_messages [Boolean] Pass True, if the administrator can pin messages, supergroups only
        # @param can_promote_members [Boolean] Pass True, if the administrator can add new administrators with a subset of his own privileges or demote administrators that he has promoted, directly or indirectly (promoted by administrators that were appointed by him)
        def promote_chat_member(
          chat_id:,
          user_id:,
          can_change_info: nil,
          can_post_messages: nil,
          can_edit_messages: nil,
          can_delete_messages: nil,
          can_invite_users: nil,
          can_restrict_members: nil,
          can_pin_messages: nil,
          can_promote_members: nil
        )
          url = build_url method_name: __method__.to_s.delete('_')
          parameters = method_parameters_hash __method__, binding
          Telegram::API::Bot::Client.post url: url, parameters: parameters
        end
      end
    end
  end
end
