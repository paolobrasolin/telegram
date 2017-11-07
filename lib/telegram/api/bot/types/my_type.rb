module Telegram
  module API
    module Bot
      module Types
        # Whatever, dude. Whatever.
        #
        # @!attribute [rw] req_att
        #   @return [String] the name of the structure
        # @!attribute [rw] opt_par
        #   Duuuuuude.
        #   @return [Fixnum] _Optional._ the size of the structure
        MyType = Struct.new(:req_att, :opt_par) do
          def initialize(req_att:, opt_par: nil)
            super(req_att, opt_par)
          end
        end
      end
    end
  end
end
