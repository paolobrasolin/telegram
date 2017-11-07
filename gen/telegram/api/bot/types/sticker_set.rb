module Telegram
  module API
    module Bot
      module Types
        # This object represents a sticker set.
        #
        # @!attribute [rw] name
        #   @return [String] Sticker set name
        # @!attribute [rw] title
        #   @return [String] Sticker set title
        # @!attribute [rw] contains_masks
        #   @return [Boolean] _True_, if the sticker set contains masks
        # @!attribute [rw] stickers
        #   @return [Array<Sticker>] List of all set stickers
        StickerSet = Struct.new(:name, :title, :contains_masks, :stickers) do
          def initialize(name:, title:, contains_masks:, stickers:)
            super(name, title, contains_masks, stickers)
          end
        end
      end
    end
  end
end
