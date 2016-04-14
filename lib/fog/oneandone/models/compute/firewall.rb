module Fog
  module Compute
    class OneAndOne
      class Firewall < Fog::Model

        # Declare Model Attributes
        identity  :id

        attribute :name
        attribute :description
        attribute :state
        attribute :creation_date
        attribute :rules
        attribute :server_ips
        
        
        def save

          requires :name, :rules

          # Perform Request
          response = service.create_firewall(name: name, rules: rules,
            description: description)

          # Decode and Merge Attributes
          data = Fog::JSON.decode(response.body)
          merge_attributes(data)

          true

        end


        def update(options = {})

          requires :id

          response = service.update_firewall(firewall_id: id, name: options[:name],
            description: options[:description])

          # Decode and Merge Attributes
          data = Fog::JSON.decode(response.body)
          merge_attributes(data)

          true

        end


        def add_ips(options = {})

          requires :id

          response = service.add_firewall_ips(firewall_id: id,
            ips: options[:ips])

          # Decode and Merge Attributes
          data = Fog::JSON.decode(response.body)
          merge_attributes(data)

          true

        end


        def remove_ip(options = {})

          requires :id

          response = service.remove_firewall_ip(firewall_id: id,
            ip_id: options[:ip_id])

          # Decode and Merge Attributes
          data = Fog::JSON.decode(response.body)
          merge_attributes(data)

          true

        end


        def add_rules(options = {})

          requires :id

          response = service.add_firewall_rules(firewall_id: id,
            rules: options[:rules])

          # Decode and Merge Attributes
          data = Fog::JSON.decode(response.body)
          merge_attributes(data)

          true

        end


        def delete_rule(options = {})

          requires :id

          response = service.delete_firewall_rule(firewall_id: id,
            rule_id: options[:rule_id])

          # Decode and Merge Attributes
          data = Fog::JSON.decode(response.body)
          merge_attributes(data)

          true

        end


        def destroy

          requires :id

          service.delete_firewall(id)
          
          true

        end


        def ready?

          state == 'ACTIVE'

        end

      end # Firewall
    end # OneAndOne
  end # Compute
end # Fog