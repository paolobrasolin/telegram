module Telegram
  module API
    module Bot
      module Types
        # This object represents a general file (as opposed to photos, voice messages and audio files).
        #
        # @!attribute [rw] file_id
        #   @return [String] Unique file identifier
        # @!attribute [rw] thumb
        #   @return [PhotoSize] _Optional_. Document thumbnail as defined by sender
        # @!attribute [rw] file_name
        #   @return [String] _Optional_. Original filename as defined by sender
        # @!attribute [rw] mime_type
        #   @return [String] _Optional_. MIME type of the file as defined by sender
        # @!attribute [rw] file_size
        #   @return [Integer] _Optional_. File size
        Document = Struct.new(:file_id, :thumb, :file_name, :mime_type, :file_size) do
          def initialize(file_id:, thumb: nil, file_name: nil, mime_type: nil, file_size: nil)
            super(file_id, thumb, file_name, mime_type, file_size)
          end
        end
      end
    end
  end
end
