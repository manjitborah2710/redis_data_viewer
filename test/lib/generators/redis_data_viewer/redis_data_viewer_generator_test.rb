require 'test_helper'
require 'generators/redis_data_viewer/redis_data_viewer_generator'

module RedisDataViewer
  class RedisDataViewerGeneratorTest < Rails::Generators::TestCase
    tests RedisDataViewerGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
