# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#setchatdescription official documentation}.
        #
        # @!attribute [rw] chat_id
        #   @return [Integer, String]
        # @!attribute [rw] description
        #   @return [String, nil]
        SetChatDescription = Struct.new(
          :chat_id,
          :description
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            chat_id:,
            description: nil
          )
            super(
              chat_id,
              (description&.to_s unless description.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { (!!r unless r.nil?) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'setChatDescription'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
