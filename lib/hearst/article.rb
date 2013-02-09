module Hearst
  class Article

    attr_reader :json
    attr_reader :title 
    attr_reader :site_id 
    attr_reader :author_id
    attr_reader :author_name
    attr_reader :body
    attr_reader :canonical_url
    attr_reader :description
    attr_reader :creation_date
    attr_reader :has_images 
    attr_reader :tags
    attr_reader :teaser
    attr_reader :keywords
    attr_reader :media
    attr_reader :publish_date
    attr_reader :sections

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

    def title
      @json["title"]
    end

    def site_id
      @json["site_id"]
    end

    def author_first_name 
      @json["author_first_name"]
    end

    def author_id
      @json["author_id"]
    end

    def author_last_name
      @json["author_last_name"]
    end

    def author_name
      "#{author_first_name} #{author_last_name}"
    end

    def body
      @json["body"]
    end

    def canonical_url
      @json["canonical_url"]
    end

    def creation_date
      @json["creation_date"]
    end

    def description
      @json["description"]
    end

    def has_images
      @json["has_images"]
    end

    def headline_image_url
      @json["headline_image_url"]
    end

    def keywords
      @json["keywords"]
    end

    def media
      @json["media"]
    end

    def meta_title
      @json["meta_title"]
    end

    def origin_site_id
      @json["origin_site_id"]
    end

    def origin_site_name
      @json["origin_site_name"]
    end

    def origin_site_url
      @json["origin_site_url"]
    end

    def promo_teaser
      @json["promo_teaser"]
    end

    def promo_title
      @json["promo_title"]
    end

    def publish_date
      @json["publish_date"]
    end

    def sections
      @json["sections"]
    end

    def tags
      @json["tags"]
    end

    def teaser
      @json["teaser"]
    end

    def url_name
      @json["url_name"]
    end
    
  end
end
