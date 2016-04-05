module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Delete a public IP
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#public_ips__ip_id__delete]
        ##
        def delete_public_ip(ip_id)
          
          params = {
            'method' => :delete,
            'endpoint' => "/public_ips/#{ip_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def delete_public_ip(ip_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog