require "set"

require "lita"

Lita.load_locales Dir[File.expand_path(
  File.join("..", "..", "locales", "*.yml"), __FILE__
)]

require "lita/handlers/conferenz/chat"
require 'lita/handlers/conferenz/config'
require 'lita/handlers/conferenz/term'
