# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#userprofilephotos official documentation}.
        #
        # @!attribute [rw] total_count
        #   @return [Integer]
        # @!attribute [rw] photos
        #   @return [Array<Array<PhotoSize>>]
        UserProfilePhotos = Struct.new(
          :total_count,
          :photos
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            total_count:,
            photos:
          )
            super(
              total_count&.to_i,
              photos&.to_a&.map { |a| a.to_a.map { |o| Types::PhotoSize.new(**o.to_h) } }
            )
          end
        end
      end
    end
  end
end
