# frozen_string_literal: true

require 'telegram/api/bot'

module Telegram
  class Bot
    def initialize(token:, client: Telegram::API::Bot::Client)
      @token = token
      @client = client
    end

    def get_updates(**parameters)
      Telegram::API::Bot::Methods::GetUpdates.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def set_webhook(**parameters)
      Telegram::API::Bot::Methods::SetWebhook.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def delete_webhook
      Telegram::API::Bot::Methods::DeleteWebhook.
        new.
        call(client: @client, token: @token)
    end

    def get_webhook_info
      Telegram::API::Bot::Methods::GetWebhookInfo.
        new.
        call(client: @client, token: @token)
    end

    def get_me
      Telegram::API::Bot::Methods::GetMe.
        new.
        call(client: @client, token: @token)
    end

    def send_message(**parameters)
      Telegram::API::Bot::Methods::SendMessage.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def forward_message(**parameters)
      Telegram::API::Bot::Methods::ForwardMessage.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def send_photo(**parameters)
      Telegram::API::Bot::Methods::SendPhoto.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def send_audio(**parameters)
      Telegram::API::Bot::Methods::SendAudio.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def send_document(**parameters)
      Telegram::API::Bot::Methods::SendDocument.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def send_video(**parameters)
      Telegram::API::Bot::Methods::SendVideo.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def send_voice(**parameters)
      Telegram::API::Bot::Methods::SendVoice.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def send_video_note(**parameters)
      Telegram::API::Bot::Methods::SendVideoNote.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def send_media_group(**parameters)
      Telegram::API::Bot::Methods::SendMediaGroup.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def send_location(**parameters)
      Telegram::API::Bot::Methods::SendLocation.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def edit_message_live_location(**parameters)
      Telegram::API::Bot::Methods::EditMessageLiveLocation.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def stop_message_live_location(**parameters)
      Telegram::API::Bot::Methods::StopMessageLiveLocation.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def send_venue(**parameters)
      Telegram::API::Bot::Methods::SendVenue.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def send_contact(**parameters)
      Telegram::API::Bot::Methods::SendContact.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def send_chat_action(**parameters)
      Telegram::API::Bot::Methods::SendChatAction.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def get_user_profile_photos(**parameters)
      Telegram::API::Bot::Methods::GetUserProfilePhotos.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def get_file(**parameters)
      Telegram::API::Bot::Methods::GetFile.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def kick_chat_member(**parameters)
      Telegram::API::Bot::Methods::KickChatMember.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def unban_chat_member(**parameters)
      Telegram::API::Bot::Methods::UnbanChatMember.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def restrict_chat_member(**parameters)
      Telegram::API::Bot::Methods::RestrictChatMember.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def promote_chat_member(**parameters)
      Telegram::API::Bot::Methods::PromoteChatMember.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def export_chat_invite_link(**parameters)
      Telegram::API::Bot::Methods::ExportChatInviteLink.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def set_chat_photo(**parameters)
      Telegram::API::Bot::Methods::SetChatPhoto.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def delete_chat_photo(**parameters)
      Telegram::API::Bot::Methods::DeleteChatPhoto.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def set_chat_title(**parameters)
      Telegram::API::Bot::Methods::SetChatTitle.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def set_chat_description(**parameters)
      Telegram::API::Bot::Methods::SetChatDescription.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def pin_chat_message(**parameters)
      Telegram::API::Bot::Methods::PinChatMessage.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def unpin_chat_message(**parameters)
      Telegram::API::Bot::Methods::UnpinChatMessage.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def leave_chat(**parameters)
      Telegram::API::Bot::Methods::LeaveChat.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def get_chat(**parameters)
      Telegram::API::Bot::Methods::GetChat.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def get_chat_administrators(**parameters)
      Telegram::API::Bot::Methods::GetChatAdministrators.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def get_chat_members_count(**parameters)
      Telegram::API::Bot::Methods::GetChatMembersCount.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def get_chat_member(**parameters)
      Telegram::API::Bot::Methods::GetChatMember.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def set_chat_sticker_set(**parameters)
      Telegram::API::Bot::Methods::SetChatStickerSet.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def delete_chat_sticker_set(**parameters)
      Telegram::API::Bot::Methods::DeleteChatStickerSet.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def answer_callback_query(**parameters)
      Telegram::API::Bot::Methods::AnswerCallbackQuery.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def edit_message_text(**parameters)
      Telegram::API::Bot::Methods::EditMessageText.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def edit_message_caption(**parameters)
      Telegram::API::Bot::Methods::EditMessageCaption.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def edit_message_reply_markup(**parameters)
      Telegram::API::Bot::Methods::EditMessageReplyMarkup.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def delete_message(**parameters)
      Telegram::API::Bot::Methods::DeleteMessage.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def send_sticker(**parameters)
      Telegram::API::Bot::Methods::SendSticker.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def get_sticker_set(**parameters)
      Telegram::API::Bot::Methods::GetStickerSet.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def upload_sticker_file(**parameters)
      Telegram::API::Bot::Methods::UploadStickerFile.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def create_new_sticker_set(**parameters)
      Telegram::API::Bot::Methods::CreateNewStickerSet.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def add_sticker_to_set(**parameters)
      Telegram::API::Bot::Methods::AddStickerToSet.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def set_sticker_position_in_set(**parameters)
      Telegram::API::Bot::Methods::SetStickerPositionInSet.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def delete_sticker_from_set(**parameters)
      Telegram::API::Bot::Methods::DeleteStickerFromSet.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def answer_inline_query(**parameters)
      Telegram::API::Bot::Methods::AnswerInlineQuery.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def send_invoice(**parameters)
      Telegram::API::Bot::Methods::SendInvoice.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def answer_shipping_query(**parameters)
      Telegram::API::Bot::Methods::AnswerShippingQuery.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def answer_pre_checkout_query(**parameters)
      Telegram::API::Bot::Methods::AnswerPreCheckoutQuery.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def send_game(**parameters)
      Telegram::API::Bot::Methods::SendGame.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def set_game_score(**parameters)
      Telegram::API::Bot::Methods::SetGameScore.
        new(**parameters).
        call(client: @client, token: @token)
    end

    def get_game_high_scores(**parameters)
      Telegram::API::Bot::Methods::GetGameHighScores.
        new(**parameters).
        call(client: @client, token: @token)
    end
  end
end
