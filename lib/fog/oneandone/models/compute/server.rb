module Fog
  module Compute
    class OneAndOne
      class Server < Fog::Model

        identity  :id

        attribute :name

      end # Server
    end # OneAndOne
  end # Compute
end # Fog