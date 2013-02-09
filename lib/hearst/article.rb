module Hearst
  class Article
    attr_reader :json
    
    def initialize(hearst, json)
      @hearst, @json = hearst, json
    end

    def fetch
      @json = @hearst.get("Article/search", {:id => id})["items"].first
      self
    end

    def id
      @json["id"]
    end

    def site_id
      @json["site_id"]
    end

    def name
      @json["name"]
    end

    def full_name
      @json["full_name"]
    end

    def description
      @json["description"]
    end

    def parent_id
      @json["parent_id"]
    end

    def full_path
      @json["full_path"]
    end

    def prefix
      @json["prefix"]
    end

    
  end
end
