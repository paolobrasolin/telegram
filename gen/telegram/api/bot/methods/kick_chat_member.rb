# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#kickchatmember official documentation}.
        #
        # @!attribute [rw] chat_id
        #   @return [Integer, String]
        # @!attribute [rw] user_id
        #   @return [Integer]
        # @!attribute [rw] until_date
        #   @return [Integer, nil]
        KickChatMember = Struct.new(
          :chat_id,
          :user_id,
          :until_date
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            chat_id:,
            user_id:,
            until_date: nil
          )
            super(
              chat_id,
              user_id&.to_i,
              (until_date&.to_i unless until_date.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { (!!r unless r.nil?) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'kickChatMember'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
