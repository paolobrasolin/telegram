# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#getuserprofilephotos official documentation}.
        #
        # @param user_id [Integer]
        # @param offset [Integer, nil]
        # @param limit [Integer, nil]
        def get_user_profile_photos(
          user_id:,
          offset: nil,
          limit: nil
        )
          Types::Response.new(
            result_caster: ->(r) { Types::UserProfilePhotos.new(**r.to_h) },
            **Client.post(
              url: build_url('getUserProfilePhotos'),
              parameters: {
                user_id: user_id,
                offset: offset,
                limit: limit
              }
            )
          )
        end
      end
    end
  end
end
