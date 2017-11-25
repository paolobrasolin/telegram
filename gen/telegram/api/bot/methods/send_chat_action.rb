# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#sendchataction official documentation}.
        #
        # @!attribute [rw] chat_id
        #   @return [Integer, String]
        # @!attribute [rw] action
        #   @return [String]
        SendChatAction = Struct.new(
          :chat_id,
          :action
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            chat_id:,
            action:
          )
            super(
              chat_id,
              action&.to_s
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { (!!r unless r.nil?) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'sendChatAction'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
