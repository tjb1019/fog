module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Add a new IP to the server
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__ips_post]
        ##
        def add_server_ip(server_id: nil, type: nil)
          
          # Build POST body
          ip_specs = {
            'type' => type
          }

          # Clean out null keys in POST body
          body = clean_hash(ip_specs)

          # Stringify the POST body
          string_body = body.to_json

          # Request
          params = {
            'method' => :post,
            'endpoint' => "/servers/#{server_id}/ips",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def add_server_ip(server_id: nil, type: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog