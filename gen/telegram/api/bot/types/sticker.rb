module Telegram
  module API
    module Bot
      module Types
        # This object represents a sticker.
        #
        # @!attribute [rw] file_id
        #   @return [String] Unique identifier for this file
        # @!attribute [rw] width
        #   @return [Integer] Sticker width
        # @!attribute [rw] height
        #   @return [Integer] Sticker height
        # @!attribute [rw] thumb
        #   @return [PhotoSize] _Optional_. Sticker thumbnail in the .webp or .jpg format
        # @!attribute [rw] emoji
        #   @return [String] _Optional_. Emoji associated with the sticker
        # @!attribute [rw] set_name
        #   @return [String] _Optional_. Name of the sticker set to which the sticker belongs
        # @!attribute [rw] mask_position
        #   @return [MaskPosition] _Optional_. For mask stickers, the position where the mask should be placed
        # @!attribute [rw] file_size
        #   @return [Integer] _Optional_. File size
        Sticker = Struct.new(:file_id, :width, :height, :thumb, :emoji, :set_name, :mask_position, :file_size) do
          def initialize(file_id:, width:, height:, thumb:, emoji:, set_name:, mask_position:, file_size:)
            super(file_id, width, height, thumb, emoji, set_name, mask_position, file_size)
          end
        end
      end
    end
  end
end
