# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#getuserprofilephotos official documentation}.
        #
        # @!attribute [rw] user_id
        #   @return [Integer]
        # @!attribute [rw] offset
        #   @return [Integer, nil]
        # @!attribute [rw] limit
        #   @return [Integer, nil]
        GetUserProfilePhotos = Struct.new(
          :user_id,
          :offset,
          :limit
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            user_id:,
            offset: nil,
            limit: nil
          )
            super(
              user_id&.to_i,
              (offset&.to_i unless offset.nil?),
              (limit&.to_i unless limit.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { Types::UserProfilePhotos.new(**r.to_h) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'getUserProfilePhotos'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
