module Hearst
  class ArticleImage
    attr_reader :json
    attr_reader :id
    attr_reader :url
    attr_reader :site_id
    attr_reader :default_width
    attr_reader :default_height
    attr_reader :default_url
    attr_reader :credit
    attr_reader :short_caption

    def initialize(hearst, json)
      @hearst, @json = hearst, json
    end

    def fetch
      @json = @hearst.get("ArticleImage/search", {:id => id})["items"].first
      self
    end

    def url
      @json["url"]
    end

    def site_id
      @json["site_id"]
    end

    def default_width
      @json["default_width"]
    end

    def default_height
      @json["default_height"]
    end

    def default_url
      @json["default_url"]
    end

    def credit
      @json["credit"]
    end

    def caption
      @json["caption"]
    end

    def short_caption
      @json["short_caption"]
    end
    
  end
end
