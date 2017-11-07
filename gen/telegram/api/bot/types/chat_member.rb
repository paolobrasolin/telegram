module Telegram
  module API
    module Bot
      module Types
        # This object contains information about one member of a chat.
        #
        # @!attribute [rw] user
        #   @return [User] Information about the user
        # @!attribute [rw] status
        #   @return [String] The member's status in the chat. Can be “creator”, “administrator”, “member”, “restricted”, “left” or “kicked”
        # @!attribute [rw] until_date
        #   @return [Integer] _Optional_. Restictred and kicked only. Date when restrictions will be lifted for this user, unix time
        # @!attribute [rw] can_be_edited
        #   @return [Boolean] _Optional_. Administrators only. True, if the bot is allowed to edit administrator privileges of that user
        # @!attribute [rw] can_change_info
        #   @return [Boolean] _Optional_. Administrators only. True, if the administrator can change the chat title, photo and other settings
        # @!attribute [rw] can_post_messages
        #   @return [Boolean] _Optional_. Administrators only. True, if the administrator can post in the channel, channels only
        # @!attribute [rw] can_edit_messages
        #   @return [Boolean] _Optional_. Administrators only. True, if the administrator can edit messages of other users, channels only
        # @!attribute [rw] can_delete_messages
        #   @return [Boolean] _Optional_. Administrators only. True, if the administrator can delete messages of other users
        # @!attribute [rw] can_invite_users
        #   @return [Boolean] _Optional_. Administrators only. True, if the administrator can invite new users to the chat
        # @!attribute [rw] can_restrict_members
        #   @return [Boolean] _Optional_. Administrators only. True, if the administrator can restrict, ban or unban chat members
        # @!attribute [rw] can_pin_messages
        #   @return [Boolean] _Optional_. Administrators only. True, if the administrator can pin messages, supergroups only
        # @!attribute [rw] can_promote_members
        #   @return [Boolean] _Optional_. Administrators only. True, if the administrator can add new administrators with a subset of his own privileges or demote administrators that he has promoted, directly or indirectly (promoted by administrators that were appointed by the user)
        # @!attribute [rw] can_send_messages
        #   @return [Boolean] _Optional_. Restricted only. True, if the user can send text messages, contacts, locations and venues
        # @!attribute [rw] can_send_media_messages
        #   @return [Boolean] _Optional_. Restricted only. True, if the user can send audios, documents, photos, videos, video notes and voice notes, implies can_send_messages
        # @!attribute [rw] can_send_other_messages
        #   @return [Boolean] _Optional_. Restricted only. True, if the user can send animations, games, stickers and use inline bots, implies can_send_media_messages
        # @!attribute [rw] can_add_web_page_previews
        #   @return [Boolean] _Optional_. Restricted only. True, if user may add web page previews to his messages, implies can_send_media_messages
        ChatMember = Struct.new(:user, :status, :until_date, :can_be_edited, :can_change_info, :can_post_messages, :can_edit_messages, :can_delete_messages, :can_invite_users, :can_restrict_members, :can_pin_messages, :can_promote_members, :can_send_messages, :can_send_media_messages, :can_send_other_messages, :can_add_web_page_previews) do
          def initialize(user:, status:, until_date:, can_be_edited:, can_change_info:, can_post_messages:, can_edit_messages:, can_delete_messages:, can_invite_users:, can_restrict_members:, can_pin_messages:, can_promote_members:, can_send_messages:, can_send_media_messages:, can_send_other_messages:, can_add_web_page_previews:)
            super(user, status, until_date, can_be_edited, can_change_info, can_post_messages, can_edit_messages, can_delete_messages, can_invite_users, can_restrict_members, can_pin_messages, can_promote_members, can_send_messages, can_send_media_messages, can_send_other_messages, can_add_web_page_previews)
          end
        end
      end
    end
  end
end
