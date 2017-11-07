module Telegram
  module API
    module Bot
      module Types
        # This object represents one size of a photo or a file / sticker thumbnail.
        #
        # @!attribute [rw] file_id
        #   @return [String] Unique identifier for this file
        # @!attribute [rw] width
        #   @return [Integer] Photo width
        # @!attribute [rw] height
        #   @return [Integer] Photo height
        # @!attribute [rw] file_size
        #   @return [Integer] _Optional_. File size
        PhotoSize = Struct.new(:file_id, :width, :height, :file_size) do
          def initialize(file_id:, width:, height:, file_size: nil)
            super(file_id, width, height, file_size)
          end
        end
      end
    end
  end
end
