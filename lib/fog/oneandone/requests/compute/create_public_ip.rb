module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Create a new public IP
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#public_ips_post]
        ##
        def create_public_ip(reverse_dns: nil, type: nil, datacenter_id: nil)
          
          # Build POST body
          new_ip = {
            'reverse_dns' => reverse_dns,
            'type' => type,
            'datacenter_id' => datacenter_id
          }

          # Clean out null keys in POST body
          body = clean_hash(new_ip)

          # Stringify the POST body
          string_body = body.to_json

          # Request
          params = {
            'method' => :post,
            'endpoint' => '/public_ips',
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def create_public_ip(reverse_dns: nil, type: nil, datacenter_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog