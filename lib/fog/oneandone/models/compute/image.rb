module Fog
  module Compute
    class OneAndOne
      class Image < Fog::Model

        identity  :id

        attribute :name
        attribute :description
        attribute :datacenter
        attribute :min_hdd_size
        attribute :state
        attribute :hdds
        attribute :server_id
        attribute :frequency
        attribute :num_images
        attribute :creation_date
        

        def save

          requires :name, :server_id, :frequency, :num_images

          # Perform Request
          response = service.create_image(name: name, description: description,
            server_id: server_id, frequency: frequency, num_images: num_images)

          # Decode and Merge Attributes
          data = Fog::JSON.decode(response.body)
          merge_attributes(data)

          true

        end


        def destroy

          requires :id

          service.delete_image(id)
          true

        end


        def ready?

          state == 'ACTIVE'

        end

      end # Image
    end # OneAndOne
  end # Compute
end # Fog