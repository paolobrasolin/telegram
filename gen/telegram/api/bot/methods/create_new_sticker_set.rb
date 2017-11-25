# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#createnewstickerset official documentation}.
        #
        # @!attribute [rw] user_id
        #   @return [Integer]
        # @!attribute [rw] name
        #   @return [String]
        # @!attribute [rw] title
        #   @return [String]
        # @!attribute [rw] png_sticker
        #   @return [InputFile, String]
        # @!attribute [rw] emojis
        #   @return [String]
        # @!attribute [rw] contains_masks
        #   @return [Boolean, nil]
        # @!attribute [rw] mask_position
        #   @return [MaskPosition, nil]
        CreateNewStickerSet = Struct.new(
          :user_id,
          :name,
          :title,
          :png_sticker,
          :emojis,
          :contains_masks,
          :mask_position
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            user_id:,
            name:,
            title:,
            png_sticker:,
            emojis:,
            contains_masks: nil,
            mask_position: nil
          )
            super(
              user_id&.to_i,
              name&.to_s,
              title&.to_s,
              png_sticker,
              emojis&.to_s,
              (!!contains_masks unless contains_masks.nil?),
              (Types::MaskPosition.new(**mask_position.to_h) unless mask_position.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { (!!r unless r.nil?) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'createNewStickerSet'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
