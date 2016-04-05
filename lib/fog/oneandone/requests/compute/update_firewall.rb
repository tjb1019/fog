module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Modify a firewall policy
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#firewall_policies__firewall_id__put]
        ##
        def update_firewall(firewall_id: nil, name: nil, description: nil)
          
          # Build POST body
          new_firewall = {
            'name' => name,
            'description' => description
          }

          # Clean out null keys in POST body
          body = clean_hash(new_firewall)

          # Stringify the POST body
          string_body = body.to_json

          # Request
          params = {
            'method' => :put,
            'endpoint' => "/firewall_policies/#{firewall_id}",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def update_firewall(firewall_id: nil, name: nil, description: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog