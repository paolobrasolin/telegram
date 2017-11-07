module Telegram
  module API
    module Bot
      module Types
        # This object represents a chat photo.
        #
        # @!attribute [rw] small_file_id
        #   @return [String] Unique file identifier of small (160x160) chat photo. This file_id can be used only for photo download.
        # @!attribute [rw] big_file_id
        #   @return [String] Unique file identifier of big (640x640) chat photo. This file_id can be used only for photo download.
        ChatPhoto = Struct.new(:small_file_id, :big_file_id) do
          def initialize(small_file_id:, big_file_id:)
            super(small_file_id, big_file_id)
          end
        end
      end
    end
  end
end
