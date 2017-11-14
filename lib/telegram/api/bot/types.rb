# frozen_string_literal: true

# frozen_string_literal: true

Gem.
  find_files(File.join('telegram', 'api', 'bot', 'types', '*.rb')).
  each { |path| require path }

module Telegram
  module API
    module Bot
      module Types
      end
    end
  end
end

class Struct
  # TODO: put into module/prepend or refinement
  # TODO: handle nested arrays
  def to_h
    members.zip(values.map { |m| m.is_a?(Struct) ? m.to_h : m }).to_h
  end
end
