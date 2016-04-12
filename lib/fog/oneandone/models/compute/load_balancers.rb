require_relative 'load_balancer'

module Fog
  module Compute
    class OneAndOne
      class LoadBalancers < Fog::Collection
        model Fog::Compute::OneAndOne::LoadBalancer

        def all
          response = service.list_load_balancers
          data = Fog::JSON.decode(response.body)
          load(data)
        end

        def get(id)
          response = service.get_load_balancer(id)
          data = Fog::JSON.decode(response.body)
          new(data)
        rescue Excon::Errors::NotFound
          nil
        end

      end # LoadBalancers
    end # OneAndOne
  end # Compute
end # Fog