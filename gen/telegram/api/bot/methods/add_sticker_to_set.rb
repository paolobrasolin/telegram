# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#addstickertoset official documentation}.
        #
        # @!attribute [rw] user_id
        #   @return [Integer]
        # @!attribute [rw] name
        #   @return [String]
        # @!attribute [rw] png_sticker
        #   @return [InputFile, String]
        # @!attribute [rw] emojis
        #   @return [String]
        # @!attribute [rw] mask_position
        #   @return [MaskPosition, nil]
        AddStickerToSet = Struct.new(
          :user_id,
          :name,
          :png_sticker,
          :emojis,
          :mask_position
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            user_id:,
            name:,
            png_sticker:,
            emojis:,
            mask_position: nil
          )
            super(
              user_id&.to_i,
              name&.to_s,
              png_sticker,
              emojis&.to_s,
              (Types::MaskPosition.new(**mask_position.to_h) unless mask_position.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { (!!r unless r.nil?) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'addStickerToSet'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
