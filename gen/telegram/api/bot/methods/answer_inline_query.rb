# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#answerinlinequery official documentation}.
        #
        # @param inline_query_id [String]
        # @param results [Array<InlineQueryResultArticle, InlineQueryResultPhoto, InlineQueryResultGif, InlineQueryResultMpeg4Gif, InlineQueryResultVideo, InlineQueryResultAudio, InlineQueryResultVoice, InlineQueryResultDocument, InlineQueryResultLocation, InlineQueryResultVenue, InlineQueryResultContact, InlineQueryResultGame, InlineQueryResultCachedPhoto, InlineQueryResultCachedGif, InlineQueryResultCachedMpeg4Gif, InlineQueryResultCachedSticker, InlineQueryResultCachedDocument, InlineQueryResultCachedVideo, InlineQueryResultCachedVoice, InlineQueryResultCachedAudio>]
        # @param cache_time [Integer, nil]
        # @param is_personal [Boolean, nil]
        # @param next_offset [String, nil]
        # @param switch_pm_text [String, nil]
        # @param switch_pm_parameter [String, nil]
        def answer_inline_query(
          inline_query_id:,
          results:,
          cache_time: nil,
          is_personal: nil,
          next_offset: nil,
          switch_pm_text: nil,
          switch_pm_parameter: nil
        )
          Types::Response.new(
            **Client.post(
              url: build_url('answerInlineQuery'),
              parameters: {
                inline_query_id: inline_query_id,
                results: results,
                cache_time: cache_time,
                is_personal: is_personal,
                next_offset: next_offset,
                switch_pm_text: switch_pm_text,
                switch_pm_parameter: switch_pm_parameter
              }
            )
          )
        end
      end
    end
  end
end
