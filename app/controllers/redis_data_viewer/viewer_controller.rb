require_dependency "redis_data_viewer/application_controller"

module RedisDataViewer
  class ViewerController < ApplicationController
    extend RedisDataViewer
    def show_data
      
    end

    def get_data
      result = {
        "data" => read_only_search(params[:db], params[:key])
      }
      render json: result
    end

    private

    def read_only_search(db, key)
      redis = RedisDataViewer.redis_client
      redis.select(db.to_i)
      value = ""
      case redis.type(key)
        when "none"
          value = "No key found"
        when "set"
          value = redis.smembers(key)
        when "hash"
          value = redis.hgetall(key)
        when "string"
          value = redis.get(key)
        when "list"
          value = redis.lrange(key, 0, -1)
        when "zset"
          value = (redis.zrange(key, 0, -1, with_scores: true) || []).to_h
        else
          value = "No key found"
      end
      value
    end
  end
end
