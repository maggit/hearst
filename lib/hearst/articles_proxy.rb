module Hearst
  class ArticlesProxy
    def initialize(hearst)
      @hearst = hearst
    end

    def self.search(hearst, options={})
    end

    def find(id)
      Hearst::Article.new(@hearst, @hearst.get("Article/search", {:id => id})['items'].first)
    end

    def search(options={})
      @hearst.get("Article/search", options)["items"].map do |json|
        Hearst::Article.new(@hearst, json)
      end
    end
  end
end