class RedisDataViewerGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def create_route
    if name == 'install'
      route "mount RedisDataViewer::Engine, at: '/redis'"
    end
  end


  def create_initializer
    if name == 'install'
      configs = begin
        f_loc = File.expand_path('../templates/initializer_template.rb', __FILE__)
        f = File.open(f_loc)
        f.read
      rescue => e
        print e.message + "#{File.expand_path('../templates', __FILE__)}" + "\n"
        ""
      end

      initializer 'redis_data_viewer.rb', configs
    end
  end
end
