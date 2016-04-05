module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns a list of IPs assigned to a firewall policy
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#firewall_policies__firewall_id__server_ips_get]
        ##
        def list_firewall_ips(firewall_id)
          
          params = {
            'method' => :get,
            'endpoint' => "/firewall_policies/#{firewall_id}/server_ips"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def list_firewall_ips(firewall_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog