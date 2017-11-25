# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#answerinlinequery official documentation}.
        #
        # @!attribute [rw] inline_query_id
        #   @return [String]
        # @!attribute [rw] results
        #   @return [Array<InlineQueryResultArticle, InlineQueryResultPhoto, InlineQueryResultGif, InlineQueryResultMpeg4Gif, InlineQueryResultVideo, InlineQueryResultAudio, InlineQueryResultVoice, InlineQueryResultDocument, InlineQueryResultLocation, InlineQueryResultVenue, InlineQueryResultContact, InlineQueryResultGame, InlineQueryResultCachedPhoto, InlineQueryResultCachedGif, InlineQueryResultCachedMpeg4Gif, InlineQueryResultCachedSticker, InlineQueryResultCachedDocument, InlineQueryResultCachedVideo, InlineQueryResultCachedVoice, InlineQueryResultCachedAudio>]
        # @!attribute [rw] cache_time
        #   @return [Integer, nil]
        # @!attribute [rw] is_personal
        #   @return [Boolean, nil]
        # @!attribute [rw] next_offset
        #   @return [String, nil]
        # @!attribute [rw] switch_pm_text
        #   @return [String, nil]
        # @!attribute [rw] switch_pm_parameter
        #   @return [String, nil]
        AnswerInlineQuery = Struct.new(
          :inline_query_id,
          :results,
          :cache_time,
          :is_personal,
          :next_offset,
          :switch_pm_text,
          :switch_pm_parameter
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            inline_query_id:,
            results:,
            cache_time: nil,
            is_personal: nil,
            next_offset: nil,
            switch_pm_text: nil,
            switch_pm_parameter: nil
          )
            super(
              inline_query_id&.to_s,
              results&.to_a&.map { |o| o },
              (cache_time&.to_i unless cache_time.nil?),
              (!!is_personal unless is_personal.nil?),
              (next_offset&.to_s unless next_offset.nil?),
              (switch_pm_text&.to_s unless switch_pm_text.nil?),
              (switch_pm_parameter&.to_s unless switch_pm_parameter.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { (!!r unless r.nil?) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'answerInlineQuery'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
