module Telegram
  module API
    module Bot
      module Types
        # This object represents a video file.
        #
        # @!attribute [rw] file_id
        #   @return [String] Unique identifier for this file
        # @!attribute [rw] width
        #   @return [Integer] Video width as defined by sender
        # @!attribute [rw] height
        #   @return [Integer] Video height as defined by sender
        # @!attribute [rw] duration
        #   @return [Integer] Duration of the video in seconds as defined by sender
        # @!attribute [rw] thumb
        #   @return [PhotoSize] _Optional_. Video thumbnail
        # @!attribute [rw] mime_type
        #   @return [String] _Optional_. Mime type of a file as defined by sender
        # @!attribute [rw] file_size
        #   @return [Integer] _Optional_. File size
        Video = Struct.new(:file_id, :width, :height, :duration, :thumb, :mime_type, :file_size) do
          def initialize(file_id:, width:, height:, duration:, thumb:, mime_type:, file_size:)
            super(file_id, width, height, duration, thumb, mime_type, file_size)
          end
        end
      end
    end
  end
end
