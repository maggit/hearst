module Hearst
  class ArticleImagesProxy
    def initialize(hearst)
      @hearst = hearst
    end

    def self.search(hearst, options={})
    end

    def find(id)
      Hearst::ArticleImage.new(@hearst, @hearst.get("ArticleImage/search", {:id => id, :shape => 'full'})['items'].first)
    end

    def search(options={})
      options[:shape] = options[:shape] ? options[:shape] : 'full'
      @hearst.get("ArticleImage/search", options)["items"].map do |json|
        Hearst::ArticleImage.new(@hearst, json)
      end
    end
  end
end