module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Removes an IP from a firewall policy
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#firewall_policies__firewall_id__server_ips__server_ip__delete]
        ##
        def remove_firewall_ip(firewall_id: nil, ip_id: nil)
          
          params = {
            'method' => :delete,
            'endpoint' => "/firewall_policies/#{firewall_id}/server_ips/#{ip_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def remove_firewall_ip(firewall_id: nil, ip_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog