# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#promotechatmember official documentation}.
        #
        # @!attribute [rw] chat_id
        #   @return [Integer, String]
        # @!attribute [rw] user_id
        #   @return [Integer]
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
        PromoteChatMember = Struct.new(
          :chat_id,
          :user_id,
          :can_change_info,
          :can_post_messages,
          :can_edit_messages,
          :can_delete_messages,
          :can_invite_users,
          :can_restrict_members,
          :can_pin_messages,
          :can_promote_members
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
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
            super(
              chat_id,
              user_id&.to_i,
              (!!can_change_info unless can_change_info.nil?),
              (!!can_post_messages unless can_post_messages.nil?),
              (!!can_edit_messages unless can_edit_messages.nil?),
              (!!can_delete_messages unless can_delete_messages.nil?),
              (!!can_invite_users unless can_invite_users.nil?),
              (!!can_restrict_members unless can_restrict_members.nil?),
              (!!can_pin_messages unless can_pin_messages.nil?),
              (!!can_promote_members unless can_promote_members.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { (!!r unless r.nil?) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'promoteChatMember'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
