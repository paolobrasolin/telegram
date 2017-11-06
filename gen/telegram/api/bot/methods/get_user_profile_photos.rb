module Telegram
  module API
    module Bot
      module Methods
        # Use this method to get a list of profile pictures for a user. Returns a UserProfilePhotos object.
        #
        # @param user_id [Integer] Unique identifier of the target user
        # @param offset [Integer] Sequential number of the first photo to be returned. By default, all photos are returned.
        # @param limit [Integer] Limits the number of photos to be retrieved. Values between 1—100 are accepted. Defaults to 100.
        def get_user_profile_photos(
          user_id:,
          offset: nil,
          limit: nil
        )
          url = build_url method_name: __method__.to_s.delete('_')
          parameters = method_parameters_hash __method__, binding
          Telegram::API::Bot::Client.post url: url, parameters: parameters
        end
      end
    end
  end
end
