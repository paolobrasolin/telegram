# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#file official documentation}.
        #
        # @!attribute [rw] file_id
        #   @return [String]
        # @!attribute [rw] file_size
        #   @return [Integer, nil]
        # @!attribute [rw] file_path
        #   @return [String, nil]
        File = Struct.new(
          :file_id,
          :file_size,
          :file_path
        ) do
          def initialize(
            file_id:,
            file_size: nil,
            file_path: nil
          )
            super(
              file_id&.to_s,
              (file_size&.to_i unless file_size.nil?),
              (file_path&.to_s unless file_path.nil?)
            )
          end
        end
      end
    end
  end
end
