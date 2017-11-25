# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#setstickerpositioninset official documentation}.
        #
        # @!attribute [rw] sticker
        #   @return [String]
        # @!attribute [rw] position
        #   @return [Integer]
        SetStickerPositionInSet = Struct.new(
          :sticker,
          :position
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            sticker:,
            position:
          )
            super(
              sticker&.to_s,
              position&.to_i
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { (!!r unless r.nil?) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'setStickerPositionInSet'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
