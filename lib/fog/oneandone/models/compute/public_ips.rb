require_relative 'public_ip'

module Fog
  module Compute
    class OneAndOne
      class PublicIps < Fog::Collection
        model Fog::Compute::OneAndOne::PublicIp

        def all
          response = service.list_public_ips
          data = Fog::JSON.decode(response.body)
          load(data)
        end

        def get(id)
          response = service.get_public_ip(id)
          data = Fog::JSON.decode(response.body)
          new(data)
        rescue Excon::Errors::NotFound
          nil
        end

      end # PublicIps
    end # OneAndOne
  end # Compute
end # Fog