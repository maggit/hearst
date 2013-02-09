
require 'uri'
require 'net/http/post/multipart'

module Hearst
  class Base
    API = "http://hearst.api.mashery.com/"
    # added version to make sure we are using the correct API version
    VERSION = "1"

    def initialize(*args)
      case args.size
      when 1
        @api_key = args.first
      else
        raise ArgumentError, "You need to pass an api key"
      end
    end

    def articles
      Hearst::ArticlesProxy.new(self)
    end

    def get(path, params={})
      params.merge!(:api_key => @api_key)
      response = JSON.parse(Typhoeus::Request.get(API + path, :params => params).body)
    end

    private

    def error(response)
     Hearst.log(response)
    end
  end
end
