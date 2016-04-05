module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Deletes a monitoring policy
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#monitoring_policies__monitoring_policy_id__delete]
        ##
        def delete_monitoring_policy(monitoring_policy_id)
          
          params = {
            'method' => :delete,
            'endpoint' => "/monitoring_policies/#{monitoring_policy_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def delete_monitoring_policy(monitoring_policy_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog