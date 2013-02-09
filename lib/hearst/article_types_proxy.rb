module Hearst
  class ArticleTypesProxy
    def initialize(hearst)
      @hearst = hearst
    end

    def self.search(hearst, options={})
    end

    def find(id)
      Hearst::ArticleType.new(@hearst, @hearst.get("ArticleType/search", {:id => id})['items'].first)
    end

    def search(options={})
      @hearst.get("ArticleType/search", options)["items"].map do |json|
        Hearst::ArticleType.new(@hearst, json)
      end
    end
  end
end