# frozen_string_literal: true

module Telegram
  module CoreExt
    module Struct
      def to_h
        Telegram::CoreExt.recursive_to_h self
      end
    end

    def self.recursive_to_h(o)
      return o.members.zip(send(__method__, o.values)).to_h if o.is_a? Struct
      return o.keys.zip(send(__method__, o.values)).to_h if o.is_a? Hash
      return o.map(&method(__method__)) if o.is_a? Array
      o
    end
  end
end
