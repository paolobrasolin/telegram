# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#sticker official documentation}.
        #
        # @!attribute [rw] file_id
        #   @return [String]
        # @!attribute [rw] width
        #   @return [Integer]
        # @!attribute [rw] height
        #   @return [Integer]
        # @!attribute [rw] thumb
        #   @return [PhotoSize, nil]
        # @!attribute [rw] emoji
        #   @return [String, nil]
        # @!attribute [rw] set_name
        #   @return [String, nil]
        # @!attribute [rw] mask_position
        #   @return [MaskPosition, nil]
        # @!attribute [rw] file_size
        #   @return [Integer, nil]
        Sticker = Struct.new(
          :file_id,
          :width,
          :height,
          :thumb,
          :emoji,
          :set_name,
          :mask_position,
          :file_size
        ) do
          def initialize(
            file_id:,
            width:,
            height:,
            thumb: nil,
            emoji: nil,
            set_name: nil,
            mask_position: nil,
            file_size: nil
          )
            super(
              file_id&.to_s,
              width&.to_i,
              height&.to_i,
              (PhotoSize.new(**thumb.to_h) unless thumb.nil?),
              (emoji&.to_s unless emoji.nil?),
              (set_name&.to_s unless set_name.nil?),
              (MaskPosition.new(**mask_position.to_h) unless mask_position.nil?),
              (file_size&.to_i unless file_size.nil?)
            )
          end
        end
      end
    end
  end
end
