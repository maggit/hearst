module Hearst
  class ArticleCategory
    attr_reader :json
    attr_reader :id
    attr_reader :name
    attr_reader :description
    attr_reader :site_id
    attr_reader :full_name
    attr_reader :parent_id
    attr_reader :full_path
    attr_reader :prefix

    def initialize(hearst, json)
      @hearst, @json = hearst, json
    end

    def fetch
      @json = @hearst.get("ArticleCategory/search", {:id => id})["items"].first
      self
    end

    def id
      @json["id"]
    end

    def name
      @json["name"]
    end

    def description
      @json["description"]
    end

    def site_id
      @json["site_id"]
    end

    def full_name
      @json["full_name"]
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
