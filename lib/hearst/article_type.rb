module Hearst
  class ArticleType
    attr_reader :json
    attr_reader :id
    attr_reader :name
    attr_reader :organization_id
    attr_reader :site_id
    attr_reader :dtt

    def initialize(hearst, json)
      @hearst, @json = hearst, json
    end

    def fetch
      @json = @hearst.get("ArticleType/search", {:id => id})["items"].first
      self
    end

    def id
      @json["id"]
    end

    def name
      @json["name"]
    end

    def organization_id
      @json["organization_id"]
    end

    def site_id
      @json["site_id"]
    end 

    def dtt
      @json["dtt"]
    end
    
  end
end
