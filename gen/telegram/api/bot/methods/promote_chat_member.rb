# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#promotechatmember official documentation}.
        #
        # @param chat_id [Integer, String]
        # @param user_id [Integer]
        # @param can_change_info [Boolean, nil]
        # @param can_post_messages [Boolean, nil]
        # @param can_edit_messages [Boolean, nil]
        # @param can_delete_messages [Boolean, nil]
        # @param can_invite_users [Boolean, nil]
        # @param can_restrict_members [Boolean, nil]
        # @param can_pin_messages [Boolean, nil]
        # @param can_promote_members [Boolean, nil]
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
          Client.post url: build_url('promoteChatMember'),
                      parameters: {
                        chat_id: chat_id,
                        user_id: user_id,
                        can_change_info: can_change_info,
                        can_post_messages: can_post_messages,
                        can_edit_messages: can_edit_messages,
                        can_delete_messages: can_delete_messages,
                        can_invite_users: can_invite_users,
                        can_restrict_members: can_restrict_members,
                        can_pin_messages: can_pin_messages,
                        can_promote_members: can_promote_members
                      }
        end
      end
    end
  end
end
