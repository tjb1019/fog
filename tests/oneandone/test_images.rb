require_relative '../../lib/fog'
require 'minitest/autorun'

Fog.mock!

class TestImage < Minitest::Test
  
  def setup

    # Establish Connection
    @compute = Fog::Compute::OneAndOne.new({
      :oneandone_api_key => '675fbe491b27896b57e76867604f8255'
    })

    # Create Image
    image = @compute.create_image(server_id: 'ServerID',
      name: 'Test Image', frequency: 'ONCE', num_images: 1)
    
    @image_id = image.body['id']

  end


  def test_list_images
    
    # Perform Request
    response = @compute.list_images

    # Assertions
    assert_equal response.body[0]['server_id'], 'ServerID'

  end

  def test_update_image

    # Perform Request
    response = @compute.update_image(image_id: @image_id,
      name: 'New Name', frequency: 'WEEKLY')

    # Assertions
    assert_equal response.body['name'], 'New Name'
    assert_equal response.body['frequency'], 'WEEKLY'

  end

  def test_get_image

    # Perform Request
    response = @compute.get_image(@image_id)

    # Assertions
    assert_equal response.body['id'], @image_id

  end

  def test_delete_image

    # Perform Request
    response = @compute.delete_image(@image_id)

    # Assertions
    assert_equal response.body, 'The requested image has been deleted.'

  end

end