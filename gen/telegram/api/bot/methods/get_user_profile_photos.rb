module Telegram
  module API
    module Bot
      module Methods
        # Use this method to get a list of profile pictures for a user. Returns a UserProfilePhotos object.
        #
        # @param user_id [Integer] Unique identifier of the target user
        # @param offset [Integer] Sequential number of the first photo to be returned. By default, all photos are returned.
        # @param limit [Integer] Limits the number of photos to be retrieved. Values between 1—100 are accepted. Defaults to 100.
        def self.get_user_profile_photos(
          user_id:,
          offset: nil,
          limit: nil
        )
        end
      end
    end
  end
end