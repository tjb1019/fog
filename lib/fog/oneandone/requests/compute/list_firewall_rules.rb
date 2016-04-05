module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns a list of a firewall policy's rules
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#firewall_policies__firewall_id__rules_get]
        ##
        def list_firewall_rules(firewall_id)
          
          params = {
            'method' => :get,
            'endpoint' => "/firewall_policies/#{firewall_id}/rules"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def list_firewall_rules(firewall_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog