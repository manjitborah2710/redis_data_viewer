Rails.application.routes.draw do
  mount RedisDataViewer::Engine => '/redis_data_viewer'
end
