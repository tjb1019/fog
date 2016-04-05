module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Modify a public IP
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#public_ips__ip_id__put]
        ##
        def update_public_ip(ip_id: nil, reverse_dns: nil)
          
          # Build PUT body
          update_ip = {
            'reverse_dns' => reverse_dns
          }

          # Stringify the PUT body
          string_body = update_ip.to_json

          # Request
          params = {
            'method' => :put,
            'endpoint' => "/public_ips/#{ip_id}",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def update_public_ip(ip_id: nil, reverse_dns: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog