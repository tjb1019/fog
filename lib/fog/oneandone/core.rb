require "fog/core"
require "fog/xml"

module Fog
  module OneAndOne
    extend Fog::Provider

    service(:compute, 'Compute')

  end # OneAndOne
end # Fog