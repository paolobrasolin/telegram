# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#sendmediagroup official documentation}.
        #
        # @!attribute [rw] chat_id
        #   @return [Integer, String]
        # @!attribute [rw] media
        #   @return [Array<InputMedia>]
        # @!attribute [rw] disable_notification
        #   @return [Boolean, nil]
        # @!attribute [rw] reply_to_message_id
        #   @return [Integer, nil]
        SendMediaGroup = Struct.new(
          :chat_id,
          :media,
          :disable_notification,
          :reply_to_message_id
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            chat_id:,
            media:,
            disable_notification: nil,
            reply_to_message_id: nil
          )
            super(
              chat_id,
              media&.to_a&.map { |o| Types::InputMedia.new(**o.to_h) },
              (!!disable_notification unless disable_notification.nil?),
              (reply_to_message_id&.to_i unless reply_to_message_id.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { r&.to_a&.map { |o| Types::Message.new(**o.to_h) } },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'sendMediaGroup'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
