module Hearst
  class ArticleCategoriesProxy
    def initialize(hearst)
      @hearst = hearst
    end

    def self.search(hearst, options={})
    end

    def find(id)
      Hearst::ArticleCategory.new(@hearst, @hearst.get("ArticleCategory/search", {:id => id})['items'].first)
    end

    def search(options={})
      @hearst.get("ArticleCategory/search", options)["items"].map do |json|
        Hearst::ArticleCategory.new(@hearst, json)
      end
    end
  end
end