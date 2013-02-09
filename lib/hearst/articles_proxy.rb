module Hearst
  class ArticlesProxy
    def initialize(hearst)
      @hearst = hearst
    end

    def self.search(hearst, options={})
    end

    def find(id)
      Hearst::Article.new(@hearst, @hearst.get("Article/search", {:id => id, :shape => 'full'})['items'].first)
    end

    def search(options={})
      options[:shape] = options[:shape] ? options[:shape] : 'full'
      @hearst.get("Article/search", options)["items"].map do |json|
        Hearst::Article.new(@hearst, json)
      end
    end
  end
end