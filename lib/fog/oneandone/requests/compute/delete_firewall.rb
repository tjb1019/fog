module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Delete a firewall policy
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#firewall_policies__firewall_id__delete]
        ##
        def delete_firewall(firewall_id)
          
          params = {
            'method' => :delete,
            'endpoint' => "/firewall_policies/#{firewall_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def delete_firewall(firewall_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog