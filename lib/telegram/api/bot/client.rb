# frozen_string_literal: true

require 'json'
require 'rest-client'

module Telegram
  module API
    module Bot
      module Client
        def self.post(url:, parameters: {})
          response = RestClient.post(url, parameters)
          symbolize_keys JSON.parse(response)
        end

        def self.symbolize_keys(object)
          return object unless object.is_a?(Hash)
          object.map do |key, value|
            [key.to_sym, symbolize_keys(value)]
          end.to_h
        end
      end
    end
  end
end
