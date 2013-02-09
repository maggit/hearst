module Hearst
  class Author
    attr_reader :json
    attr_reader :id
    attr_reader :site_id
    attr_reader :nick_name
    attr_reader :last_name
    attr_reader :email
    attr_reader :title
    attr_reader :first_name

    def initialize(hearst, json)
      @hearst, @json = hearst, json
    end

    def fetch
      @json = @hearst.get("Author/search", {:id => id})["items"].first
      self
    end

    def id
      @json["id"]
    end

    def site_id
      @json["site_id"]
    end

    def nick_name
      @json["nick_name"]
    end

    def email
      @json["email"]
    end

    def title
      @json["title"]
    end

    def first_name
      @json["first_name"]
    end

    def last_name
      @json["last_name"]
    end

    def name
      "#{first_name} #{last_name}"
    end
    
  end
end
