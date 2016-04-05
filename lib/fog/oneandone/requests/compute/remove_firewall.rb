module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Remove a firewall policy from a server's IP
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__ips__ip_id__firewall_policy_delete]
        ##
        def remove_firewall(server_id: nil, ip_id: nil)
          
          params = {
            'method' => :delete,
            'endpoint' => "/servers/#{server_id}/ips/#{ip_id}/firewall_policy"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def remove_firewall(server_id: nil, ip_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog