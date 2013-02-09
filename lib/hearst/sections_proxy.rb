module Hearst
  class SectionsProxy
    def initialize(hearst)
      @hearst = hearst
    end

    def self.search(hearst, options={})
    end

    def find(id)
      Hearst::Section.new(@hearst, @hearst.get("ArticleSection/search", {:id => id})['items'].first)
    end

    def search(options={})
      @hearst.get("ArticleSection/search", options)["items"].map do |json|
        Hearst::Section.new(@hearst, json)
      end
    end
  end
end