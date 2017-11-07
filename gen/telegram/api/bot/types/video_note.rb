module Telegram
  module API
    module Bot
      module Types
        # This object represents a {https://telegram.org/blog/video-messages-and-telescope video message} (available in Telegram apps as of {https://telegram.org/blog/video-messages-and-telescope v.4.0}).
        #
        # @!attribute [rw] file_id
        #   @return [String] Unique identifier for this file
        # @!attribute [rw] length
        #   @return [Integer] Video width and height as defined by sender
        # @!attribute [rw] duration
        #   @return [Integer] Duration of the video in seconds as defined by sender
        # @!attribute [rw] thumb
        #   @return [PhotoSize] _Optional_. Video thumbnail
        # @!attribute [rw] file_size
        #   @return [Integer] _Optional_. File size
        VideoNote = Struct.new(:file_id, :length, :duration, :thumb, :file_size) do
          def initialize(file_id:, length:, duration:, thumb:, file_size:)
            super(file_id, length, duration, thumb, file_size)
          end
        end
      end
    end
  end
end
