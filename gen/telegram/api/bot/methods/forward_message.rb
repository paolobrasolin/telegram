# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#forwardmessage official documentation}.
        #
        # @!attribute [rw] chat_id
        #   @return [Integer, String]
        # @!attribute [rw] from_chat_id
        #   @return [Integer, String]
        # @!attribute [rw] disable_notification
        #   @return [Boolean, nil]
        # @!attribute [rw] message_id
        #   @return [Integer]
        ForwardMessage = Struct.new(
          :chat_id,
          :from_chat_id,
          :disable_notification,
          :message_id
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            chat_id:,
            from_chat_id:,
            disable_notification: nil,
            message_id:
          )
            super(
              chat_id,
              from_chat_id,
              (!!disable_notification unless disable_notification.nil?),
              message_id&.to_i
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { Types::Message.new(**r.to_h) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'forwardMessage'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
