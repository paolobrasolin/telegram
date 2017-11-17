# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#stickerset official documentation}.
        #
        # @!attribute [rw] name
        #   @return [String]
        # @!attribute [rw] title
        #   @return [String]
        # @!attribute [rw] contains_masks
        #   @return [Boolean]
        # @!attribute [rw] stickers
        #   @return [Array<Sticker>]
        StickerSet = Struct.new(
          :name,
          :title,
          :contains_masks,
          :stickers
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            name:,
            title:,
            contains_masks:,
            stickers:
          )
            super(
              name&.to_s,
              title&.to_s,
              (!!contains_masks unless contains_masks.nil?),
              stickers&.to_a&.map { |o| Types::Sticker.new(**o.to_h) }
            )
          end
        end
      end
    end
  end
end
