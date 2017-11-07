module Telegram
  module API
    module Bot
      module Types
        # This object represents an audio file to be treated as music by the Telegram clients.
        #
        # @!attribute [rw] file_id
        #   @return [String] Unique identifier for this file
        # @!attribute [rw] duration
        #   @return [Integer] Duration of the audio in seconds as defined by sender
        # @!attribute [rw] performer
        #   @return [String] _Optional_. Performer of the audio as defined by sender or by audio tags
        # @!attribute [rw] title
        #   @return [String] _Optional_. Title of the audio as defined by sender or by audio tags
        # @!attribute [rw] mime_type
        #   @return [String] _Optional_. MIME type of the file as defined by sender
        # @!attribute [rw] file_size
        #   @return [Integer] _Optional_. File size
        Audio = Struct.new(:file_id, :duration, :performer, :title, :mime_type, :file_size) do
          def initialize(file_id:, duration:, performer:, title:, mime_type:, file_size:)
            super(file_id, duration, performer, title, mime_type, file_size)
          end
        end
      end
    end
  end
end
