module Lita::Handlers::Conferenz
  class Config < Lita::Handler
    namespace "conferenz"

    default_term_normalizer = proc do |term|
      term.to_s.downcase.strip
    end

    config :cooldown, types: [Integer, nil], default: 0
    config :link_conferenz_threshold, types: [Integer, nil], default: 0
    config :term_pattern, type: Regexp, default: /[\[\]\p{Word}\._|\{\}]{2,}/
    config :term_normalizer, default: default_term_normalizer do
      validate do |value|
        t("callable_required") unless value.respond_to?(:call)
      end
    end
  end
end

Lita.register_handler(Lita::Handlers::Conferenz::Config)
