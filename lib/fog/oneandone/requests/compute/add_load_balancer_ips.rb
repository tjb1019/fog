module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Add IPs to a load balancer
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#load_balancers__load_balancer_id__server_ips_post]
        ##
        def add_load_balancer_ips(load_balancer_id: nil, ips: nil)
          
          # Build POST body
          new_ips = {
            'server_ips' => ips
          }

          # Clean out null keys in POST body
          body = clean_hash(new_ips)

          # Stringify the POST body
          string_body = body.to_json

          # Request
          params = {
            'method' => :post,
            'endpoint' => "/load_balancers/#{load_balancer_id}/server_ips",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def add_load_balancer_ips(load_balancer_id: nil, ips: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog