# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#restrictchatmember official documentation}.
        #
        # @!attribute [rw] chat_id
        #   @return [Integer, String]
        # @!attribute [rw] user_id
        #   @return [Integer]
        # @!attribute [rw] until_date
        #   @return [Integer, nil]
        # @!attribute [rw] can_send_messages
        #   @return [Boolean, nil]
        # @!attribute [rw] can_send_media_messages
        #   @return [Boolean, nil]
        # @!attribute [rw] can_send_other_messages
        #   @return [Boolean, nil]
        # @!attribute [rw] can_add_web_page_previews
        #   @return [Boolean, nil]
        RestrictChatMember = Struct.new(
          :chat_id,
          :user_id,
          :until_date,
          :can_send_messages,
          :can_send_media_messages,
          :can_send_other_messages,
          :can_add_web_page_previews
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            chat_id:,
            user_id:,
            until_date: nil,
            can_send_messages: nil,
            can_send_media_messages: nil,
            can_send_other_messages: nil,
            can_add_web_page_previews: nil
          )
            super(
              chat_id,
              user_id&.to_i,
              (until_date&.to_i unless until_date.nil?),
              (!!can_send_messages unless can_send_messages.nil?),
              (!!can_send_media_messages unless can_send_media_messages.nil?),
              (!!can_send_other_messages unless can_send_other_messages.nil?),
              (!!can_add_web_page_previews unless can_add_web_page_previews.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { (!!r unless r.nil?) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'restrictChatMember'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
