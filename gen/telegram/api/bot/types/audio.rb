# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#audio official documentation}.
        #
        # @!attribute [rw] file_id
        #   @return [String]
        # @!attribute [rw] duration
        #   @return [Integer]
        # @!attribute [rw] performer
        #   @return [String, nil]
        # @!attribute [rw] title
        #   @return [String, nil]
        # @!attribute [rw] mime_type
        #   @return [String, nil]
        # @!attribute [rw] file_size
        #   @return [Integer, nil]
        Audio = Struct.new(
          :file_id,
          :duration,
          :performer,
          :title,
          :mime_type,
          :file_size
        ) do
          def initialize(
            file_id:,
            duration:,
            performer: nil,
            title: nil,
            mime_type: nil,
            file_size: nil
          )
            super(
              file_id&.to_s,
              duration&.to_i,
              (performer&.to_s unless performer.nil?),
              (title&.to_s unless title.nil?),
              (mime_type&.to_s unless mime_type.nil?),
              (file_size&.to_i unless file_size.nil?)
            )
          end
        end
      end
    end
  end
end
