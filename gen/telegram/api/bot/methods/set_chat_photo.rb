# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#setchatphoto official documentation}.
        #
        # @!attribute [rw] chat_id
        #   @return [Integer, String]
        # @!attribute [rw] photo
        #   @return [InputFile]
        SetChatPhoto = Struct.new(
          :chat_id,
          :photo
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            chat_id:,
            photo:
          )
            super(
              chat_id,
              photo
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { (!!r unless r.nil?) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'setChatPhoto'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
