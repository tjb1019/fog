module Fog
  module Compute
    class OneAndOne
      class LoadBalancer < Fog::Model

        # Declare Model Attributes
        identity  :id

        attribute :name
        attribute :description
        attribute :state
        attribute :rules
        attribute :datacenter
        attribute :datacenter_id
        attribute :health_check_test
        attribute :health_check_interval
        attribute :persistence
        attribute :persistence_time
        attribute :method
        attribute :health_check_path
        attribute :health_check_parse
        attribute :creation_date
        attribute :server_ips
        
        
        def save

          requires :name, :rules, :health_check_test, :health_check_interval,
            :persistence, :persistence_time, :method

          # Perform Request
          response = service.create_load_balancer(name: name,
            description: description, health_check_test: health_check_test,
            health_check_interval: health_check_interval,
            persistence: persistence, persistence_time: persistence_time,
            method: method, rules: rules, health_check_path: health_check_path,
            health_check_parse: health_check_parse, datacenter_id: datacenter_id)

          # Decode and Merge Attributes
          data = Fog::JSON.decode(response.body)
          merge_attributes(data)

          true

        end


        def destroy

          requires :id

          service.delete_load_balancer(id)
          
          true

        end


        def ready?

          state == 'ACTIVE'

        end

      end # LoadBalancer
    end # OneAndOne
  end # Compute
end # Fog