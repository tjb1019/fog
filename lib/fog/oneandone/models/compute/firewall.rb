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