# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inputmediavideo official documentation}.
        #
        # @!attribute [rw] type
        #   @return [String]
        # @!attribute [rw] media
        #   @return [String]
        # @!attribute [rw] caption
        #   @return [String, nil]
        # @!attribute [rw] width
        #   @return [Integer, nil]
        # @!attribute [rw] height
        #   @return [Integer, nil]
        # @!attribute [rw] duration
        #   @return [Integer, nil]
        InputMediaVideo = Struct.new(
          :type,
          :media,
          :caption,
          :width,
          :height,
          :duration
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            type:,
            media:,
            caption: nil,
            width: nil,
            height: nil,
            duration: nil
          )
            super(
              type&.to_s,
              media&.to_s,
              (caption&.to_s unless caption.nil?),
              (width&.to_i unless width.nil?),
              (height&.to_i unless height.nil?),
              (duration&.to_i unless duration.nil?)
            )
          end
        end
      end
    end
  end
end
