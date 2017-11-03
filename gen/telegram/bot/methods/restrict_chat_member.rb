module Telegram
  module Bot
    module Methods
      # Use this method to restrict a user in a supergroup. The bot must be an administrator in the supergroup for this to work and must have the appropriate admin rights. Pass _True_ for all boolean parameters to lift restrictions from a user. Returns _True_ on success.
      #
      # @param chat_id [Integer or String] Unique identifier for the target chat or username of the target supergroup (in the format <code>@supergroupusername</code>)
      # @param user_id [Integer] Unique identifier of the target user
      # @param until_date [Integer] Date when restrictions will be lifted for the user, unix time. If user is restricted for more than 366 days or less than 30 seconds from the current time, they are considered to be restricted forever
      # @param can_send_messages [Boolean] Pass True, if the user can send text messages, contacts, locations and venues
      # @param can_send_media_messages [Boolean] Pass True, if the user can send audios, documents, photos, videos, video notes and voice notes, implies can_send_messages
      # @param can_send_other_messages [Boolean] Pass True, if the user can send animations, games, stickers and use inline bots, implies can_send_media_messages
      # @param can_add_web_page_previews [Boolean] Pass True, if the user may add web page previews to their messages, implies can_send_media_messages
      def self.restrict_chat_member(
        chat_id:,
        user_id:,
        until_date: nil,
        can_send_messages: nil,
        can_send_media_messages: nil,
        can_send_other_messages: nil,
        can_add_web_page_previews: nil
      )
      end
    end
  end
end
