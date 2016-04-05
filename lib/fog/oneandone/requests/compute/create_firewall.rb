module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Creates a new firewall policy
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#firewall_policies_post]
        ##
        def create_firewall(name: nil, description: nil, rules: nil)

          # Build POST body
          new_firewall = {
            'name' => name,
            'description' => description,
            'rules' => rules
          }

          # Clean out null values from POST body
          body = clean_hash(new_firewall)

          # Stringify the POST body
          string_body = body.to_json

          # Request
          params = {
            'method' => :post,
            'endpoint' => '/firewall_policies',
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def create_firewall(name: nil, description: nil, rules: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog