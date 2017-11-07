module Telegram
  module API
    module Bot
      module Types
        # This object represents a voice note.
        #
        # @!attribute [rw] file_id
        #   @return [String] Unique identifier for this file
        # @!attribute [rw] duration
        #   @return [Integer] Duration of the audio in seconds as defined by sender
        # @!attribute [rw] mime_type
        #   @return [String] _Optional_. MIME type of the file as defined by sender
        # @!attribute [rw] file_size
        #   @return [Integer] _Optional_. File size
        Voice = Struct.new(:file_id, :duration, :mime_type, :file_size) do
          def initialize(file_id:, duration:, mime_type: nil, file_size: nil)
            super(file_id, duration, mime_type, file_size)
          end
        end
      end
    end
  end
end
