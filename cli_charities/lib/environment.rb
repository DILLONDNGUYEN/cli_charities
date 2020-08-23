require "cli_charities/version"

module CliCharities
  class Error < StandardError; end
  # Your code goes here...
end

require "./lib/cli_charities/cli"
require "./lib/cli_charities/api"
require "./lib/cli_charities/charities"