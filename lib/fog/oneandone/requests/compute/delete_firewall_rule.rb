module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Delete a firewall policy's rule
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#firewall_policies__firewall_id__rules__rule_id__delete]
        ##
        def delete_firewall_rule(firewall_id: nil, rule_id: nil)
          
          params = {
            'method' => :delete,
            'endpoint' => "/firewall_policies/#{firewall_id}/rules/#{rule_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def delete_firewall_rule(firewall_id: nil, rule_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog