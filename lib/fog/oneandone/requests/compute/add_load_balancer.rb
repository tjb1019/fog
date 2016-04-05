module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Add a load balancer to a server's IP
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__ips__ip_id__load_balancers_post]
        ##
        def add_load_balancer(server_id: nil, ip_id: nil,
          load_balancer_id: nil)
          
          # Build POST body
          load_balancer_specs = {
            'load_balancer_id' => load_balancer_id
          }

          # Stringify the POST body
          string_body = load_balancer_specs.to_json

          # Request
          params = {
            'method' => :post,
            'endpoint' => "/servers/#{server_id}/ips/#{ip_id}/load_balancers",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def add_load_balancer(server_id: nil, ip_id: nil,
          load_balancer_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog