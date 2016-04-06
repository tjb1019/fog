require_relative 'server'

module Fog
  module Compute
    class OneAndOne
      class Servers < Fog::Collection
        model Fog::Compute::OneAndOne::Server

        def all
          data = service.list_servers.body
          load(data)
        end

        def get(id)
          # new(data)
          # rescue Excon::Errors::NotFound
          # nil
        end

      end # Servers
    end # OneAndOne
  end # Compute
end # Fog