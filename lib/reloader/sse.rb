require 'json'

module Reloader
  class SSE
    def initialize io
      @io = io
    end

    def write object, options = {}
      options.each do |k,v|
        @io.write "#{k}: #{v}\n"
      end
      json_object = object.to_json
      #@io.write "data: #{JSON.dump(object)}\n\n"
      @io.write "data: #{json_object}\n\n"
    end

    def close
      @io.close
    end
  end
end
