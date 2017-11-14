# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#video official documentation}.
        #
        # @!attribute [rw] file_id
        #   @return [String]
        # @!attribute [rw] width
        #   @return [Integer]
        # @!attribute [rw] height
        #   @return [Integer]
        # @!attribute [rw] duration
        #   @return [Integer]
        # @!attribute [rw] thumb
        #   @return [PhotoSize, nil]
        # @!attribute [rw] mime_type
        #   @return [String, nil]
        # @!attribute [rw] file_size
        #   @return [Integer, nil]
        Video = Struct.new(
          :file_id,
          :width,
          :height,
          :duration,
          :thumb,
          :mime_type,
          :file_size
        ) do
          def initialize(
            file_id:,
            width:,
            height:,
            duration:,
            thumb: nil,
            mime_type: nil,
            file_size: nil
          )
            super(
              file_id&.to_s,
              width&.to_i,
              height&.to_i,
              duration&.to_i,
              (PhotoSize.new(**thumb.to_h) unless thumb.nil?),
              (mime_type&.to_s unless mime_type.nil?),
              (file_size&.to_i unless file_size.nil?)
            )
          end
        end
      end
    end
  end
end
