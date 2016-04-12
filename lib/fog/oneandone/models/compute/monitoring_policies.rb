require_relative 'monitoring_policy'

module Fog
  module Compute
    class OneAndOne
      class MonitoringPolicies < Fog::Collection
        model Fog::Compute::OneAndOne::MonitoringPolicy

        def all
          response = service.list_monitoring_policies
          data = Fog::JSON.decode(response.body)
          load(data)
        end

        def get(id)
          response = service.get_monitoring_policy(id)
          data = Fog::JSON.decode(response.body)
          new(data)
        rescue Excon::Errors::NotFound
          nil
        end

      end # MonitoringPolicies
    end # OneAndOne
  end # Compute
end # Fog