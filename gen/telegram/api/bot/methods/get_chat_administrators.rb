# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#getchatadministrators official documentation}.
        #
        # @!attribute [rw] chat_id
        #   @return [Integer, String]
        GetChatAdministrators = Struct.new(
          :chat_id
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            chat_id:
          )
            super(
              chat_id
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { r&.to_a&.map { |o| Types::ChatMember.new(**o.to_h) } },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'getChatAdministrators'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
