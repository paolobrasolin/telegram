module Telegram
  module API
    module Bot
      module Types
        # This object represent a user's profile pictures.
        #
        # @!attribute [rw] total_count
        #   @return [Integer] Total number of profile pictures the target user has
        # @!attribute [rw] photos
        #   @return [Array<Array<PhotoSize>>] Requested profile pictures (in up to 4 sizes each)
        UserProfilePhotos = Struct.new(:total_count, :photos) do
          def initialize(total_count:, photos:)
            super(total_count, photos)
          end
        end
      end
    end
  end
end
