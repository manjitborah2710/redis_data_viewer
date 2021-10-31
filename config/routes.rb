RedisDataViewer::Engine.routes.draw do
	get '/', to: 'viewer#show_data'
	get '/get_data', to: 'viewer#get_data'
end
