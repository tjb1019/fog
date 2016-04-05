module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Add a firewall policy to a server's IP
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__ips__ip_id__firewall_policy_put]
        ##
        def add_firewall(server_id: nil, ip_id: nil, firewall_id: nil)
          
          # Build PUT body
          firewall_specs = {
            'id' => firewall_id
          }

          # Stringify the PUT body
          string_body = firewall_specs.to_json

          # Request
          params = {
            'method' => :put,
            'endpoint' => "/servers/#{server_id}/ips/#{ip_id}/firewall_policy",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def add_firewall(server_id: nil, ip_id: nil, firewall_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog