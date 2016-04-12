module Fog
  module Compute
    class OneAndOne
      class SharedStorage < Fog::Model

        # Declare Model Attributes
        identity  :id

        attribute :name
        attribute :description
        attribute :size
        attribute :datacenter_id
        attribute :state
        attribute :datacenter
        attribute :creation_date
        attribute :servers
        
        
        def save

          requires :name, :size

          # Perform Request
          response = service.create_shared_storage(name: name, size: size,
            description: description, datacenter_id: datacenter_id)

          # Decode and Merge Attributes
          data = Fog::JSON.decode(response.body)
          merge_attributes(data)

          true

        end


        def destroy

          requires :id

          service.delete_shared_storage(id)
          
          true

        end


        def ready?

          state == 'ACTIVE'

        end

      end # SharedStorage
    end # OneAndOne
  end # Compute
end # Fog