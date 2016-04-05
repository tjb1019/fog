module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about a firewall policy
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#firewall_policies__firewall_id__get]
        ##
        def get_firewall(firewall_id)
          
          params = {
            'method' => :get,
            'endpoint' => "/firewall_policies/#{firewall_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def get_firewall(firewall_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog