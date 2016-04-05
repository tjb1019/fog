module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Add new rules to a firewall policy
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#firewall_policies__firewall_id__rules_post]
        ##
        def add_firewall_rules(firewall_id: nil, rules: nil)
          
          # Build POST body
          new_rules = {
            'rules' => rules
          }

          # Clean out null keys in POST body
          body = clean_hash(new_rules)

          # Stringify the POST body
          string_body = body.to_json

          # Request
          params = {
            'method' => :post,
            'endpoint' => "/firewall_policies/#{firewall_id}/rules",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def add_firewall_rules(firewall_id: nil, rules: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog