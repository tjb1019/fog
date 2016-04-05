require_relative 'server'

module Fog
  module Compute
    class OneAndOne
      class Servers < Fog::Collection
        model Fog::Compute::OneAndOne::Server

        def all
          # load(data)
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