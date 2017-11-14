# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#chatmember official documentation}.
        #
        # @!attribute [rw] user
        #   @return [User]
        # @!attribute [rw] status
        #   @return [String]
        # @!attribute [rw] until_date
        #   @return [Integer, nil]
        # @!attribute [rw] can_be_edited
        #   @return [Boolean, nil]
        # @!attribute [rw] can_change_info
        #   @return [Boolean, nil]
        # @!attribute [rw] can_post_messages
        #   @return [Boolean, nil]
        # @!attribute [rw] can_edit_messages
        #   @return [Boolean, nil]
        # @!attribute [rw] can_delete_messages
        #   @return [Boolean, nil]
        # @!attribute [rw] can_invite_users
        #   @return [Boolean, nil]
        # @!attribute [rw] can_restrict_members
        #   @return [Boolean, nil]
        # @!attribute [rw] can_pin_messages
        #   @return [Boolean, nil]
        # @!attribute [rw] can_promote_members
        #   @return [Boolean, nil]
        # @!attribute [rw] can_send_messages
        #   @return [Boolean, nil]
        # @!attribute [rw] can_send_media_messages
        #   @return [Boolean, nil]
        # @!attribute [rw] can_send_other_messages
        #   @return [Boolean, nil]
        # @!attribute [rw] can_add_web_page_previews
        #   @return [Boolean, nil]
        ChatMember = Struct.new(
          :user,
          :status,
          :until_date,
          :can_be_edited,
          :can_change_info,
          :can_post_messages,
          :can_edit_messages,
          :can_delete_messages,
          :can_invite_users,
          :can_restrict_members,
          :can_pin_messages,
          :can_promote_members,
          :can_send_messages,
          :can_send_media_messages,
          :can_send_other_messages,
          :can_add_web_page_previews
        ) do
          def initialize(
            user:,
            status:,
            until_date: nil,
            can_be_edited: nil,
            can_change_info: nil,
            can_post_messages: nil,
            can_edit_messages: nil,
            can_delete_messages: nil,
            can_invite_users: nil,
            can_restrict_members: nil,
            can_pin_messages: nil,
            can_promote_members: nil,
            can_send_messages: nil,
            can_send_media_messages: nil,
            can_send_other_messages: nil,
            can_add_web_page_previews: nil
          )
            super(
              User.new(**user.to_h),
              status&.to_s,
              (until_date&.to_i unless until_date.nil?),
              (!!can_be_edited unless can_be_edited.nil?),
              (!!can_change_info unless can_change_info.nil?),
              (!!can_post_messages unless can_post_messages.nil?),
              (!!can_edit_messages unless can_edit_messages.nil?),
              (!!can_delete_messages unless can_delete_messages.nil?),
              (!!can_invite_users unless can_invite_users.nil?),
              (!!can_restrict_members unless can_restrict_members.nil?),
              (!!can_pin_messages unless can_pin_messages.nil?),
              (!!can_promote_members unless can_promote_members.nil?),
              (!!can_send_messages unless can_send_messages.nil?),
              (!!can_send_media_messages unless can_send_media_messages.nil?),
              (!!can_send_other_messages unless can_send_other_messages.nil?),
              (!!can_add_web_page_previews unless can_add_web_page_previews.nil?)
            )
          end
        end
      end
    end
  end
end
