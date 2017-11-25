# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inputmediaphoto official documentation}.
        #
        # @!attribute [rw] type
        #   @return [String]
        # @!attribute [rw] media
        #   @return [String]
        # @!attribute [rw] caption
        #   @return [String, nil]
        InputMediaPhoto = Struct.new(
          :type,
          :media,
          :caption
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            type:,
            media:,
            caption: nil
          )
            super(
              type&.to_s,
              media&.to_s,
              (caption&.to_s unless caption.nil?)
            )
          end
        end
      end
    end
  end
end
